﻿using DoAnLTUDQL1.Presenters;
using DoAnLTUDQL1.Validators;
using DoAnLTUDQL1.Views.Admin;
using DoAnLTUDQL1.Views.Register;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DoAnLTUDQL1.Views.Login
{
    public partial class frmLogin : MetroFramework.Forms.MetroForm, ILoginView
    {
        LoginPresenter presenter;

        public frmLogin()
        {
            InitializeComponent();
            Load += FrmLogin_Load;
        }

        private void FrmLogin_Load(object sender, EventArgs e)
        {
            // Add validators
            //AddValidators();

            presenter = new LoginPresenter(this);

            mBtnLogin.Click += MBtnLogin_Click;
            mLRegister.Click += MLRegister_Click;
        }

        private void AddValidators()
        {
            var required1 = new RequiedInputValidator
            {
                ErrorMessage = "Bạn phải nhập tên người dùng!",
                ControlToValidate = mTxtUsername
            };

            var required2 = new RequiedInputValidator
            {
                ErrorMessage = "Bạn phải nhập mật khẩu!",
                ControlToValidate = mTxtPassword
            };
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            base.OnFormClosing(e);
            e.Cancel = false;
        }

        private void MLRegister_Click(object sender, EventArgs e)
        {
            this.Hide();

            Thread tRegister = new Thread(_ =>
            {
                Application.Run(new frmRegister());
            });
            tRegister.Start();

            this.Close();
        }

        private void MBtnLogin_Click(object sender, EventArgs e)
        {
            Login?.Invoke(this, null);
        }

        #region ILoginView implementations
        public string Username
        {
            get
            {
                return mTxtUsername.Text;
            }
        }
        public string Password
        {
            get
            {
                return mTxtPassword.Text;
            }
        }

        private string _message;
        public string Message
        {
            get
            {
                return _message;
            }
            set
            {
                _message = value;

                // TODO: Open form Student or Teacher or Admin

                if (value == "Success:Admin")
                {
                    // Open form Admin
                    this.Hide();
                    Thread tRegister = new Thread(_ =>
                    {
                        Application.Run(new FrmAdmin());
                    });
                    tRegister.Start();
                    this.Close();
                }

                if (value == "Success:Student")
                {
                    // Open form Student
                    MessageBox.Show("Student");
                }

                if (value == "Success:Teacher")
                {
                    // Open form Teacher
                    MessageBox.Show("Teacher");
                }

                if (!value.Contains("Success") && value == "User not exists")
                {
                    MessageBox.Show("Tài khoản này không tồn tại!");
                }

                if (!value.Contains("Success") && value == "Password failed")
                {
                    MessageBox.Show("Mật khẩu nhập không đúng!");
                }
            }
        }

        public event EventHandler Login;
        #endregion
    }
}
