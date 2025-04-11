package org.example.oldman_and_sea.entity;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class QuestTest {
    private Quest quest;

    @Test
    public void testCongratulations(){
        String congratulations = quest.congratulation("Santiago");
        assertEquals("Santiago, поздравляем с победой!", congratulations);
    }

    @Test
    public void tesDefeat(){
        String defeat = quest.defeat("Santiago");
        assertEquals("Santiago, ты проиграл...", defeat);
    }
}
