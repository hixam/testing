package com.home.models;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="users")
public class Users {

    @Id
    private String id;
	private String username;
    private String email;
    private List<Pedido> pListId;
    
    public List<Pedido> getpListId() {
		return pListId;
	}

	public void setpListId(List<Pedido> pListId) {
		this.pListId = pListId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



    public Users() {}

    public Users(String username, String email) {
        this.username = username;
        this.email = email;
    }

}