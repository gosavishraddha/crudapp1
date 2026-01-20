package com.shraddhagosavi.crudapp1.model;


    public class Students {

        private int id;
        private String name;
        private String email;
        private String mobile;

        public Students() {
        }

        public Students(String name, String email, String mobile) {
            this.name = name;
            this.email = email;
            this.mobile = mobile;
        }

        public Students(int id, String name, String email, String mobile) {
            this.id = id;
            this.name = name;
            this.email = email;
            this.mobile = mobile;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getMobile() {
            return mobile;
        }

        public void setMobile(String mobile) {
            this.mobile = mobile;
        }

        @Override
        public String toString() {
            return "Students{" +
                    "id=" + id +
                    ", name='" + name + '\'' +
                    ", email='" + email + '\'' +
                    ", mobile='" + mobile + '\'' +
                    '}';
        }
    }





