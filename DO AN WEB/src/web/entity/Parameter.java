package web.entity;

import javax.persistence.*;

@Entity
@Table(name = "Parameters")
public class Parameter {
	@Id
	private int idPara;
	private String character;
	private String number;
	private String country;
	private String range;
	private String timeused;
	private String timechar;
	
	public int getIdPara() {
		return idPara;
	}
	public void setIdPara(int idPara) {
		this.idPara = idPara;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getRange() {
		return range;
	}
	public void setRange(String range) {
		this.range = range;
	}
	public String getTimeused() {
		return timeused;
	}
	public void setTimeused(String timeused) {
		this.timeused = timeused;
	}
	public String getTimechar() {
		return timechar;
	}
	public void setTimechar(String timechar) {
		this.timechar = timechar;
	}
	
	
	

}
