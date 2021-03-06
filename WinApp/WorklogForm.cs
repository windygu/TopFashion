﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace TopFashion
{
    public partial class WorklogForm : PermissionForm
    {
        public WorklogForm(int selectIndex = 0)
        {
            InitializeComponent();
            this.tabControl1.SelectedIndex = selectIndex;
            this.selectStaffControl1.SelectOnlyOne = true;
        }

        private void WorklogForm_Load(object sender, EventArgs e)
        {
            base.CheckUserPermission(this);
            LoadWorklogs();
            LoadCardTypes();
            comboBox2.SelectedIndex = 0;
            comboBox4.SelectedIndex = 0;
        }

        private void LoadWorklogs()
        {
            List<Worklog> elements = WorklogLogic.GetInstance().GetAllWorklogs();
            comboBox1.Items.Clear();
            foreach (Worklog element in elements)
            {
                comboBox1.Items.Add(element);
            }
        }

        private void LoadCardTypes()
        {
            List<CardType> elements = CardTypeLogic.GetInstance().GetAllCardTypes();
            comboBox3.Items.Clear();
            comboBox5.Items.Clear();
            comboBox5.Items.Add("--不限--");
            foreach (CardType element in elements)
            {
                comboBox3.Items.Add(element);
                comboBox5.Items.Add(element);
            }
            if (comboBox3.Items.Count > 0)
                comboBox3.SelectedIndex = 0;
            comboBox5.SelectedIndex = 0;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Worklog worklog = new Worklog();
            worklog.销售 = (selectStaffControl1.SelectedStaffs != null && selectStaffControl1.SelectedStaffs.Count > 0) ? selectStaffControl1.SelectedStaffs[0] : null;
            worklog.日期 = DateTime.Parse(textBox3.Text.Trim());
            worklog.客户 = textBox1.Text.Trim();
            worklog.电话 = textBox2.Text.Trim();
            worklog.是否自访 = checkBox1.Checked;
            worklog.是否老会员 = checkBox2.Checked;
            worklog.是否电话拜访 = checkBox3.Checked;
            worklog.性别 = (性别)Enum.ToObject(typeof(性别), comboBox2.SelectedIndex);
            worklog.意向 = textBox4.Text.Trim();
            worklog.住址 = textBox5.Text.Trim();
            worklog.备注 = textBox6.Text;
            WorklogLogic rl = WorklogLogic.GetInstance();
            int id = rl.AddWorklog(worklog);
            if (id > 0)
            {
                worklog.ID = id;
                LoadWorklogs();
                MessageBox.Show("添加成功！");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex > -1)
            {
                Worklog worklog = new Worklog();
                worklog.ID = ((Product)comboBox1.SelectedItem).ID;
            worklog.销售 = (selectStaffControl1.SelectedStaffs != null && selectStaffControl1.SelectedStaffs.Count > 0) ? selectStaffControl1.SelectedStaffs[0] : null;
            worklog.日期 = DateTime.Parse(textBox3.Text.Trim());
            worklog.客户 = textBox1.Text.Trim();
            worklog.电话 = textBox2.Text.Trim();
            worklog.是否自访 = checkBox1.Checked;
            worklog.是否老会员 = checkBox2.Checked;
            worklog.是否电话拜访 = checkBox3.Checked;
            worklog.性别 = (性别)Enum.ToObject(typeof(性别), comboBox2.SelectedIndex);
            worklog.意向 = textBox4.Text.Trim();
            worklog.住址 = textBox5.Text.Trim();
            worklog.备注 = textBox6.Text;
                WorklogLogic rl = WorklogLogic.GetInstance();
                if (rl.UpdateWorklog(worklog))
                {
                    LoadWorklogs();
                    MessageBox.Show("修改成功！");
                }
            }
            else
            {
                MessageBox.Show("先选定要修改的工作日报！");
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex > -1)
            {
                if (MessageBox.Show("确定要删除该工作日报？", "删除提醒", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.OK)
                {
                    Worklog worklog = new Worklog();
                    worklog.ID = ((Worklog)comboBox1.SelectedItem).ID;
                    if (WorklogLogic.GetInstance().DeleteWorklog(worklog))
                    {
                        LoadWorklogs();
                    }
                }
            }
            else
            {
                MessageBox.Show("先选定要删除的工作日报！");
            }
        }

        private void button5_Click(object sender, EventArgs e)
        {
            DataTable dt = Search(textBox8.Text.Trim(), comboBox4.SelectedIndex, comboBox5.SelectedItem as CardType, textBox9.Text.Trim(), textBox7.Text.Trim());
            dataGridView1.DataSource = dt;
        }

        private DataTable Search(string name, int sex = 0, CardType cardType = null, string cardNo = null, string mobile = null)
        {
            string nm = "";
            if (!string.IsNullOrEmpty(name) && name.Trim() != "")
            {
                nm = " and TF_Member.姓名 like '%" + name + "%'";
            }
            string sx = "";
            if (sex > 0)
            {
                sx = " and TF_Member.性别=" + sex;
            }
            string ct = "";
            if (cardType != null)
            {
                ct = " and TF_Member.卡种=" + cardType.ID;
            }
            string cn = "";
            if (!string.IsNullOrEmpty(cardNo) && cardNo.Trim() != "")
            {
                cn = " and TF_Member.卡号 like '%" + cardNo.Trim() + "%'";
            }
            string mb = "";
            if (!string.IsNullOrEmpty(mobile) && mobile.Trim() != "")
            {
                mb = " and TF_Member.电话 like '%" + mobile.Trim() + "%'";
            }
            string where = nm + sx + ct + cn + mb + " order by TF_Worklog.ID desc";
            return WorklogLogic.GetInstance().GetWorklogs(where);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            DataTable dt = dataGridView1.DataSource as DataTable;
            if (dt != null)
            {
                dt.TableName = "工作日报信息";
                KellPrinter.DataReporter printer = new KellPrinter.DataReporter(dt);
                PrintForm pf = new PrintForm(printer);
                pf.Show();
            }
            else
            {
                MessageBox.Show("当前没有数据可供打印导出！");
            }
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBox1.SelectedIndex > -1)
            {
                Worklog worklog = comboBox1.SelectedItem as Worklog;
                if (worklog != null)
                {
                    selectStaffControl1.SelectedStaffs = new List<Staff>(){ worklog.销售 };
                    textBox1.Text = worklog.客户;
                    monthCalendar1.SelectionStart = worklog.日期;
                    textBox3.Text = worklog.日期.ToString("yyyy-MM-dd");
                    textBox2.Text = worklog.电话;
                    checkBox1.Checked = worklog.是否自访;
                    checkBox2.Checked = worklog.是否老会员;
                    checkBox3.Checked = worklog.是否电话拜访;
                    comboBox2.SelectedIndex = (int)worklog.性别;
                    textBox4.Text = worklog.意向;
                    textBox5.Text = worklog.住址;
                    textBox6.Text = worklog.备注;
                }
            }
        }

        private void textBox3_MouseClick(object sender, MouseEventArgs e)
        {
            monthCalendar1.Show();
        }

        private void monthCalendar1_DateSelected(object sender, DateRangeEventArgs e)
        {
            textBox3.Text = e.Start.ToString("yyyy-MM-dd");
        }
    }
}
