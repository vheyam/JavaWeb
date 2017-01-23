package objects;
// Generated 23-Jan-2017 00:45:44 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Symptoms generated by hbm2java
 */
@Entity
@Table(name="symptoms"
    ,catalog="prs_db"
)
public class Symptoms  implements java.io.Serializable {


     private Integer symptomsId;
     private Integer temperature;
     private String vomitting;
     private String diarrhoea;
     private String rash;
     private String chestpain;
     private String nausea;
     private String haemorrhaging;
     private String endemicCountryVisited;
     private String burns;
     private String currentMedication;
     private String movementOfBodyParts;
     private String constipation;
     private String breathingProblems;
     private String pain;
     private Set<PatientSymptoms> patientSymptomses = new HashSet<PatientSymptoms>(0);

    public Symptoms() {
    }

    public Symptoms(Integer temperature, String vomitting, String diarrhoea, String rash, String chestpain, String nausea, String haemorrhaging, String endemicCountryVisited, String burns, String currentMedication, String movementOfBodyParts, String constipation, String breathingProblems, String pain, Set<PatientSymptoms> patientSymptomses) {
       this.temperature = temperature;
       this.vomitting = vomitting;
       this.diarrhoea = diarrhoea;
       this.rash = rash;
       this.chestpain = chestpain;
       this.nausea = nausea;
       this.haemorrhaging = haemorrhaging;
       this.endemicCountryVisited = endemicCountryVisited;
       this.burns = burns;
       this.currentMedication = currentMedication;
       this.movementOfBodyParts = movementOfBodyParts;
       this.constipation = constipation;
       this.breathingProblems = breathingProblems;
       this.pain = pain;
       this.patientSymptomses = patientSymptomses;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="symptoms_Id", unique=true, nullable=false)
    public Integer getSymptomsId() {
        return this.symptomsId;
    }
    
    public void setSymptomsId(Integer symptomsId) {
        this.symptomsId = symptomsId;
    }

    
    @Column(name="temperature")
    public Integer getTemperature() {
        return this.temperature;
    }
    
    public void setTemperature(Integer temperature) {
        this.temperature = temperature;
    }

    
    @Column(name="vomitting")
    public String getVomitting() {
        return this.vomitting;
    }
    
    public void setVomitting(String vomitting) {
        this.vomitting = vomitting;
    }

    
    @Column(name="diarrhoea", length=45)
    public String getDiarrhoea() {
        return this.diarrhoea;
    }
    
    public void setDiarrhoea(String diarrhoea) {
        this.diarrhoea = diarrhoea;
    }

    
    @Column(name="rash", length=45)
    public String getRash() {
        return this.rash;
    }
    
    public void setRash(String rash) {
        this.rash = rash;
    }

    
    @Column(name="chestpain", length=45)
    public String getChestpain() {
        return this.chestpain;
    }
    
    public void setChestpain(String chestpain) {
        this.chestpain = chestpain;
    }

    
    @Column(name="nausea", length=45)
    public String getNausea() {
        return this.nausea;
    }
    
    public void setNausea(String nausea) {
        this.nausea = nausea;
    }

    
    @Column(name="haemorrhaging", length=45)
    public String getHaemorrhaging() {
        return this.haemorrhaging;
    }
    
    public void setHaemorrhaging(String haemorrhaging) {
        this.haemorrhaging = haemorrhaging;
    }

    
    @Column(name="endemic_country_visited", length=45)
    public String getEndemicCountryVisited() {
        return this.endemicCountryVisited;
    }
    
    public void setEndemicCountryVisited(String endemicCountryVisited) {
        this.endemicCountryVisited = endemicCountryVisited;
    }

    
    @Column(name="burns", length=45)
    public String getBurns() {
        return this.burns;
    }
    
    public void setBurns(String burns) {
        this.burns = burns;
    }

    
    @Column(name="current_medication", length=45)
    public String getCurrentMedication() {
        return this.currentMedication;
    }
    
    public void setCurrentMedication(String currentMedication) {
        this.currentMedication = currentMedication;
    }

    
    @Column(name="movement_of_body_parts", length=45)
    public String getMovementOfBodyParts() {
        return this.movementOfBodyParts;
    }
    
    public void setMovementOfBodyParts(String movementOfBodyParts) {
        this.movementOfBodyParts = movementOfBodyParts;
    }

    
    @Column(name="constipation", length=45)
    public String getConstipation() {
        return this.constipation;
    }
    
    public void setConstipation(String constipation) {
        this.constipation = constipation;
    }

    
    @Column(name="breathing_problems", length=45)
    public String getBreathingProblems() {
        return this.breathingProblems;
    }
    
    public void setBreathingProblems(String breathingProblems) {
        this.breathingProblems = breathingProblems;
    }

    
    @Column(name="pain", length=45)
    public String getPain() {
        return this.pain;
    }
    
    public void setPain(String pain) {
        this.pain = pain;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="symptoms")
    public Set<PatientSymptoms> getPatientSymptomses() {
        return this.patientSymptomses;
    }
    
    public void setPatientSymptomses(Set<PatientSymptoms> patientSymptomses) {
        this.patientSymptomses = patientSymptomses;
    }




}


