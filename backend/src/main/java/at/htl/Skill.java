package at.htl;

import io.quarkus.hibernate.orm.panache.PanacheEntity;

import javax.persistence.Entity;

@Entity
public class Skill extends PanacheEntity {
    public String name;
    public String imgUrl;

    public SkillDTO toDTO() {
        return new SkillDTO(name, imgUrl);
    }
}
