USE SkillSprintDatabase;  
GO

EXEC [dbo].[SP_Challenge_Insert]
    @Title = 'Vivid Dreams',
    @Description = 'Tap into the unconsciousness of dreams, exploring the surreal world of the mind through art and expression.',
    @StartDate = '2025-02-15',
    @EndDate = '2025-03-15',
    @Category = 'Design';  

EXEC [dbo].[SP_Challenge_Insert]
    @Title = 'HighLowSpeed',
    @Description = 'Experiment with 1 minute of music in high and low speeds',
    @StartDate = '2025-02-20',
    @EndDate = '2025-03-20',
    @Category = 'Music'; 

EXEC [dbo].[SP_Challenge_Insert]
    @Title = 'Poetry of the Soul',
    @Description = 'Create a poem that expresses the depth of human emotion',
    @StartDate = '2025-03-01',
    @EndDate = '2025-04-01',
    @Category = 'Poetry'; 

EXEC [dbo].[SP_Challenge_Insert]
    @Title = 'Abstract Visions',
    @Description = 'Create an abstract piece of art that conveys emotion and meaning through non-representational forms.',
    @StartDate = '2025-03-10',
    @EndDate = '2025-04-10',
    @Category = 'Design'; 

EXEC [dbo].[SP_Challenge_Insert]
    @Title = 'Soundscapes of the Future',
    @Description = 'Compose a piece of music that reflects futuristic concepts, blending electronic and organic sounds.',
    @StartDate = '2025-03-15',
    @EndDate = '2025-04-15',
    @Category = 'Music';  

EXEC [dbo].[SP_Challenge_Insert]
    @Title = 'The Essence of Nature',
    @Description = 'Write a poem that captures the beauty and tranquility of nature, drawing inspiration from the natural world.',
    @StartDate = '2025-04-01',
    @EndDate = '2025-05-01',
    @Category = 'Poetry'; 

