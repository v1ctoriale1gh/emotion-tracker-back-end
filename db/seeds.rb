User.create(name: "tori", password: "test", username: "Tori")

5.times do
    Log.create(user_id: 1)
end

Emotion.create(log_id: 1, name: "Fear",         intensity: 2 )
Emotion.create(log_id: 1, name: "Anger",        intensity: 3 )
Emotion.create(log_id: 1, name: "Sadness",      intensity: 5 )
Emotion.create(log_id: 1, name: "Anxiety",      intensity: 7 )
Emotion.create(log_id: 1, name: "Happiness",    intensity: 4 )
Emotion.create(log_id: 1, name: "Peacefulness", intensity: 8 )
Emotion.create(log_id: 1, name: "Gratitude",    intensity: 2 )

Emotion.create(log_id: 2, name: "Fear",         intensity: 3 )
Emotion.create(log_id: 2, name: "Anger",        intensity: 3 )
Emotion.create(log_id: 2, name: "Sadness",      intensity: 6 )
Emotion.create(log_id: 2, name: "Anxiety",      intensity: 4 )
Emotion.create(log_id: 2, name: "Happiness",    intensity: 0 )
Emotion.create(log_id: 2, name: "Peacefulness", intensity: 2 )
Emotion.create(log_id: 2, name: "Gratitude",    intensity: 6 )

Emotion.create(log_id: 3, name: "Fear",         intensity: 5 )
Emotion.create(log_id: 3, name: "Anger",        intensity: 6 )
Emotion.create(log_id: 3, name: "Sadness",      intensity: 4 )
Emotion.create(log_id: 3, name: "Anxiety",      intensity: 1 )
Emotion.create(log_id: 3, name: "Happiness",    intensity: 10)
Emotion.create(log_id: 3, name: "Peacefulness", intensity: 0 )
Emotion.create(log_id: 3, name: "Gratitude",    intensity: 2 )

Emotion.create(log_id: 4, name: "Fear",         intensity: 1 )
Emotion.create(log_id: 4, name: "Anger",        intensity: 2 )
Emotion.create(log_id: 4, name: "Sadness",      intensity: 3 )
Emotion.create(log_id: 4, name: "Anxiety",      intensity: 4 )
Emotion.create(log_id: 4, name: "Happiness",    intensity: 5 )
Emotion.create(log_id: 4, name: "Peacefulness", intensity: 6 )
Emotion.create(log_id: 4, name: "Gratitude",    intensity: 7 )

Emotion.create(log_id: 15, name: "Fear",         intensity: 7 )
Emotion.create(log_id: 15, name: "Anger",        intensity: 6 )
Emotion.create(log_id: 15, name: "Sadness",      intensity: 5 )
Emotion.create(log_id: 15, name: "Anxiety",      intensity: 4 )
Emotion.create(log_id: 15, name: "Happiness",    intensity: 3 )
Emotion.create(log_id: 15, name: "Peacefulness", intensity: 2 )
Emotion.create(log_id: 15, name: "Gratitude",    intensity: 1 )


