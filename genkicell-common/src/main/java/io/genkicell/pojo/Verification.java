package io.genkicell.pojo;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="verification")
public class Verification implements Serializable {
    /**
     * 主键
     */
    @Column(name = "id")
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "SELECT LAST_INSERT_ID()")
    private Integer id;

    /**
     * 用户ID
     */
    @Column(name = "userid")
    private Integer userid;

    /**
     * 姓名
     */
    @Column(name = "first_name")
    private String firstName;

    @Column(name = "last_name")
    private String lastName;

    /**
     * 年龄
     */
    @Column(name = "age")
    private Integer age;

    /**
     * 性别
     */
    @Column(name = "gender")
    private String gender;

    /**
     * 国籍ID
     */
    @Column(name = "nationalityid")
    private String nationalityid;

    /**
     * 详细地址
     */
    @Column(name = "address")
    private String address;

    /**
     * 正面证件照片地址
     */
    private String imgUrlfront;

    /**
     * 背面证件照片地址
     */
    private String imgUrlBack;

    /**
     * 手持证件照片地址
     */
    private String imgUrlSelf;

    /**
     * 审核状态（0,未审核,1,审核通过,2,审核拒绝
     */
    @Column(name = "status")
    private Integer status;

    /**
     * 上传时间
     */
    @Column(name = "updatetime")
    private Timestamp updatetime;
    
    
    private Citys citys;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName == null ? null : firstName.trim();
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName == null ? null : lastName.trim();
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getNationalityid() {
        return nationalityid;
    }

    public void setNationalityid(String nationalityid) {
        this.nationalityid = nationalityid == null ? null : nationalityid.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getimgUrlfront() {
        return imgUrlfront;
    }

    public void setimgUrlfront(String imgUrlfront) {
        this.imgUrlfront = imgUrlfront == null ? null : imgUrlfront.trim();
    }

    public String getimgUrlBack() {
        return imgUrlBack;
    }

    public void setimgUrlBack(String imgUrlBack) {
        this.imgUrlBack = imgUrlBack == null ? null : imgUrlBack.trim();
    }

    public String getimgUrlSelf() {
        return imgUrlSelf;
    }

    public void setimgUrlSelf(String imgUrlSelf) {
        this.imgUrlSelf = imgUrlSelf == null ? null : imgUrlSelf.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Timestamp getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Timestamp timestamp) {
        this.updatetime = timestamp;
    }
    

    public Citys getCitys() {
		return citys;
	}

	public void setCitys(Citys citys) {
		this.citys = citys;
	}

	@Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", userid=").append(userid);
        sb.append(", firstName=").append(firstName);
        sb.append(", lastName=").append(lastName);
        sb.append(", age=").append(age);
        sb.append(", gender=").append(gender);
        sb.append(", nationalityid=").append(nationalityid);
        sb.append(", address=").append(address);
        sb.append(", imgUrlfront=").append(imgUrlfront);
        sb.append(", imgUrlBack=").append(imgUrlBack);
        sb.append(", imgUrlSelf=").append(imgUrlSelf);
        sb.append(", status=").append(status);
        sb.append(", updatetime=").append(updatetime);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}