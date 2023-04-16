package at.htl;

import java.util.List;
import java.util.stream.Collectors;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/skills")
public class ExampleResource {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<SkillDTO> getSkills() {
        return Skill.listAll().stream().map(e -> {
            return ((Skill) e).toDTO();
        }).collect(Collectors.toList());
    }
}