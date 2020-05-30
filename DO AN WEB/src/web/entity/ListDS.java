package web.entity;

import javax.persistence.*;

@Entity
@Table(name = "Lists")
public class ListDS {
	@Id
	private int idlist;
	private String namelist;
	public int getIdlist() {
		return idlist;
	}
	public void setIdlist(int idlist) {
		this.idlist = idlist;
	}
	public String getNamelist() {
		return namelist;
	}
	public void setNamelist(String namelist) {
		this.namelist = namelist;
	}
	
}
