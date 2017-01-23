package objects;
// Generated 23-Jan-2017 00:45:44 by Hibernate Tools 4.3.1


import javax.persistence.AttributeOverride;
import javax.persistence.AttributeOverrides;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * PatientSymptoms generated by hbm2java
 */
@Entity
@Table(name="patient_symptoms"
    ,catalog="prs_db"
)
public class PatientSymptoms  implements java.io.Serializable {


     private PatientSymptomsId id;
     private Symptoms symptoms;
     private String date;

    public PatientSymptoms() {
    }

	
    public PatientSymptoms(PatientSymptomsId id, Symptoms symptoms) {
        this.id = id;
        this.symptoms = symptoms;
    }
    public PatientSymptoms(PatientSymptomsId id, Symptoms symptoms, String date) {
       this.id = id;
       this.symptoms = symptoms;
       this.date = date;
    }
   
     @EmbeddedId

    
    @AttributeOverrides( {
        @AttributeOverride(name="patientSymptomsId", column=@Column(name="patient_symptoms_Id", nullable=false) ), 
        @AttributeOverride(name="symptomsId", column=@Column(name="symptoms_Id", nullable=false) ), 
        @AttributeOverride(name="patientId", column=@Column(name="patient_Id", nullable=false) ) } )
    public PatientSymptomsId getId() {
        return this.id;
    }
    
    public void setId(PatientSymptomsId id) {
        this.id = id;
    }

@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="symptoms_Id", nullable=false, insertable=false, updatable=false)
    public Symptoms getSymptoms() {
        return this.symptoms;
    }
    
    public void setSymptoms(Symptoms symptoms) {
        this.symptoms = symptoms;
    }

    
    @Column(name="date", length=45)
    public String getDate() {
        return this.date;
    }
    
    public void setDate(String date) {
        this.date = date;
    }




}


