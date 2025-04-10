package org.example.oldman_and_sea.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Step {
    private String title;
    private String description;
    private String option1;
    private String option2;
    private String correctAnswer;
    private String wrongAnswer;
}
