/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Ailton_Oliver
 */
@Entity
public class Produtos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String nomeProduto;
    private String marcaModelo;
    private String anoFabric;
    private String estadoProduto;
    private float precoUnit;
    private int quantProduhttps;
    
    
  public void CadProdutos(){
     
  }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public String getMarcaModelo() {
        return marcaModelo;
    }

    public void setMarcaModelo(String marcaModelo) {
        this.marcaModelo = marcaModelo;
    }

    public String getAnoFabric() {
        return anoFabric;
    }

    public void setAnoFabric(String anoFabric) {
        this.anoFabric = anoFabric;
    }

    public String getEstadoProduto() {
        return estadoProduto;
    }

    public void setEstadoProduto(String estadoProduto) {
        this.estadoProduto = estadoProduto;
    }

    public float getPrecoUnit() {
        return precoUnit;
    }

    public void setPrecoUnit(float precoUnit) {
        this.precoUnit = precoUnit;
    }

    public int getQuantProduhttps() {
        return quantProduhttps;
    }

    public void setQuantProduhttps(int quantProduhttps) {
        this.quantProduhttps = quantProduhttps;
    }
    
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Produtos)) {
            return false;
        }
        Produtos other = (Produtos) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "models.Produtos[ id=" + id + " ]";
    }
    
}
