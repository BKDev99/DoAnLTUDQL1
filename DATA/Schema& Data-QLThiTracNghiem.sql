USE [QLThiTracNghiem]
GO
/****** Object:  Table [dbo].[Answer]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Answer](
	[AnswerId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IsCorrect] [bit] NULL,
 CONSTRAINT [PK__Answer__D482500484526F93] PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AnswerDistribute]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnswerDistribute](
	[AnswerDistributeId] [int] NOT NULL,
	[QuestionDistributeId] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IsCorrect] [bit] NULL,
 CONSTRAINT [PK__AnswerDi__FE8769D9AE0AC57F] PRIMARY KEY CLUSTERED 
(
	[AnswerDistributeId] ASC,
	[QuestionDistributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Classroom](
	[ClassroomId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[ClassName] [nvarchar](50) NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK__Classroo__11618EAA905DF4A0] PRIMARY KEY CLUSTERED 
(
	[ClassroomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Exam](
	[ExamId] [varchar](10) NOT NULL,
	[ExamName] [nvarchar](50) NULL,
	[IsPacticeExam] [bit] NULL,
 CONSTRAINT [PK__Exams__297521C766BCE530] PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamCode]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamCode](
	[ExamCodeId] [varchar](10) NOT NULL,
	[NumberOfQuestions] [int] NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[IsPracticeExam] [bit] NULL,
 CONSTRAINT [PK__ExamCode__C23C701A6F3C9A98] PRIMARY KEY CLUSTERED 
(
	[ExamCodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamCode_Question]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamCode_Question](
	[ExamCodeId] [varchar](10) NOT NULL,
	[QuestionId] [int] NOT NULL,
 CONSTRAINT [PK__ExamCode__12E076E02E1E9C4E] PRIMARY KEY CLUSTERED 
(
	[ExamCodeId] ASC,
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamDetail]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamDetail](
	[ExamDetailId] [varchar](10) NOT NULL,
	[ExamId] [varchar](10) NOT NULL,
	[StartTime] [datetime] NULL,
	[Duration] [int] NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK__ExamDeta__D30D63A5D444D2DC] PRIMARY KEY CLUSTERED 
(
	[ExamDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamResult]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamResult](
	[ExamDetailId] [varchar](10) NOT NULL,
	[StudentId] [varchar](10) NOT NULL,
	[NumberOfQuestionsAnswered] [int] NULL,
	[NumberOfCorrectAnswers] [int] NULL,
	[Mark] [float] NULL,
	[ExamCodeId] [varchar](10) NOT NULL,
 CONSTRAINT [PK_ExamResult] PRIMARY KEY CLUSTERED 
(
	[ExamDetailId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ExamTake]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamTake](
	[ExamDetailId] [varchar](10) NOT NULL,
	[StudentId] [varchar](10) NOT NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[ExamCodeId] [varchar](10) NULL,
 CONSTRAINT [PK_ExamTake] PRIMARY KEY CLUSTERED 
(
	[ExamDetailId] ASC,
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeId] [int] NOT NULL,
	[GradeName] [nvarchar](50) NULL,
 CONSTRAINT [PK__Grades__54F87A57317443B3] PRIMARY KEY CLUSTERED 
(
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Question]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Hint] [text] NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[DifficultLevel] [int] NULL,
	[IsDistributed] [bit] NULL,
	[NumberOfCorrectAnswers] [int] NULL CONSTRAINT [DF_Question_NumberOfCorrectAnswers]  DEFAULT ((0)),
	[NumberOfWrongAnswers] [int] NULL CONSTRAINT [DF_Question_NumberOfWrongAnswers]  DEFAULT ((0)),
 CONSTRAINT [PK__Question__0DC06FACC7235C0E] PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[QuestionDistribute]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuestionDistribute](
	[QuestionDistributeId] [int] NOT NULL,
	[StudentId] [varchar](10) NULL,
	[Content] [nvarchar](max) NULL,
	[Hint] [nvarchar](max) NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[DifficultLevel] [int] NOT NULL,
	[IsApproved] [bit] NULL,
 CONSTRAINT [PK__Question__282A3E7A6B8CDAA9] PRIMARY KEY CLUSTERED 
(
	[QuestionDistributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleType]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleType](
	[RoleTypeId] [int] NOT NULL,
	[RoleName] [nvarchar](50) NULL,
 CONSTRAINT [PK__RoleType__3E697319A82B6833] PRIMARY KEY CLUSTERED 
(
	[RoleTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student](
	[StudentId] [varchar](10) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[ClassroomId] [varchar](10) NULL,
 CONSTRAINT [PK__Students__32C52B9985113C14] PRIMARY KEY CLUSTERED 
(
	[StudentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
	[SubjectName] [nvarchar](50) NULL,
 CONSTRAINT [PK__Subjects__AC1BA3A83AC3C4A6] PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC,
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teach]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teach](
	[TeacherId] [varchar](10) NOT NULL,
	[ClassroomId] [varchar](10) NOT NULL,
	[SubjectId] [varchar](10) NOT NULL,
	[GradeId] [int] NOT NULL,
 CONSTRAINT [PK__Teaches__F5485A2D7C44CB8F] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC,
	[ClassroomId] ASC,
	[SubjectId] ASC,
	[GradeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[TeacherId] [varchar](10) NOT NULL,
	[Username] [varchar](50) NOT NULL,
 CONSTRAINT [PK__Teachers__EDF259646D4F415D] PRIMARY KEY CLUSTERED 
(
	[TeacherId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 05/01/2020 10:13:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Username] [varchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Dob] [datetime] NULL,
	[Phone] [varchar](15) NULL,
	[CreatedDate] [datetime] NULL DEFAULT (getdate()),
	[Status] [bit] NULL DEFAULT ((1)),
	[LastLoginDate] [datetime] NULL DEFAULT (getdate()),
	[RoleTypeId] [int] NULL DEFAULT ((1)),
 CONSTRAINT [PK__Users__536C85E52E4D282A] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Answer] ON 

GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (1, 1, N'uu th? lai', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (2, 1, N'b?t th?', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (3, 1, N'thoái hóa gi?ng', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (4, 1, N'siêu tr?i', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (5, 2, N'có tác d?ng b?o v? các nhi?m s?c th? cung nhu làm cho các nhi?m s?c th? không dính vào nhau.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (6, 2, N'. là nh?ng di?m mà t?i dó phân t? ADN b?t d?u du?c nhân dôi.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (7, 2, N'là v? trí liên k?t v?i thoi phân bào giúp nhi?m s?c th? di chuy?n v? hai c?c c?a t? bào', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (8, 2, N'là v? trí duy nh?t có th? x?y ra trao d?i chéo trong gi?m phân', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (9, 3, N'Hình thành loài m?i b?ng cách li sinh thái là con du?ng hình thành loài nhanh nh?t.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (10, 3, N'Quá trình hình thành loài m?i ch? di?n ra trong cùng khu v?c d?a lí', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (11, 3, N'Hình thành loài b?ng cách li d?a lí có th? có s? tham gia c?a các y?u t? ng?u nhiên.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (12, 3, N'Hình thành loài m?i b?ng co ch? lai xa và da b?i hoá ch? di?n ra ? d?ng v?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (13, 4, N'khu v?c sinh s?ng c?a sinh v?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (14, 4, N'noi cu trú c?a loài', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (15, 4, N'kho?ng không gian sinh thái', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (16, 4, N'noi có d?y d? các y?u t? thu?n l?i cho s? t?n t?i c?a sinh v?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (17, 5, N'd?t bi?n s? lu?ng nhi?m s?c th?', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (18, 5, N'd?t bi?n gen', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (19, 5, N'd?t bi?n c?u trúc nhi?m s?c th?', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (20, 5, N'bi?n d? cá th?', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (21, 6, N'ATP, NADPH VÀ CO2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (22, 6, N'ATP, NADPH', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (23, 6, N'ATP, NADPH VÀ O2', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (24, 6, N'ATP, NADP+ VÀ O2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (25, 7, N'N2+ và NO3-', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (26, 7, N'N2+ và NH3+', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (27, 7, N'NH4+ và NO3-. ', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (28, 7, N'NH4- và NO3+.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (29, 8, N'12,75%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (30, 8, N'75%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (31, 8, N'50%.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (32, 8, N' 25%.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (33, 9, N'1,2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (34, 9, N'3,4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (35, 9, N'1,3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (36, 9, N'2,5', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (37, 10, N'0,5', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (38, 10, N'0,3', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (39, 10, N'0.4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (40, 10, N'0,1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (41, 11, N'm?t m?t c?p G-X', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (42, 11, N'thay th? m?t c?p G-X b?ng m?t c?p A-T', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (43, 11, N'm?t m?t c?p A-T', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (44, 11, N'thay th? m?t c?p A-T b?ng m?t c?p G-X.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (45, 12, N'66%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (46, 12, N'59% ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (47, 12, N'1%', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (48, 12, N'51', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (49, 13, N'4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (50, 13, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (51, 13, N'2', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (52, 13, N'1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (53, 14, N'25%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (54, 14, N'18,55%.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (55, 14, N'12,5%.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (56, 14, N'37,5%.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (57, 15, N'56,25%.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (58, 15, N'6,25%.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (59, 15, N'50%', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (60, 15, N'31,25%.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (61, 16, N'1/4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (62, 16, N'2/49.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (63, 16, N'2/98', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (64, 16, N'47/98', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (65, 17, N'V?n chuy?n dinh du?ng', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (66, 17, N'Tham gia quá trình v?n chuy?n khí trong hô h?p', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (67, 17, N'V?n chuy?n các s?n ph?m bài ti?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (68, 17, N'V?n chuy?n dinh du?ng,và s?n ph?m bài ti?t', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (69, 18, N'sinh v?t an th?c v?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (70, 18, N'sinh v?t tiêu th?   ', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (71, 18, N'sinh v?t phân gi?i ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (72, 18, N'sinh v?t s?n xu?t  ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (73, 19, N'Nhóm cá th? sinh v?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (74, 19, N'Qu?n th? sinh v?t', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (75, 19, N'Nhóm qu?n th? sinh v?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (76, 19, N'Qu?n xã sinh v?t', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (77, 20, N'Fe, Mn, C, Ni', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (78, 20, N'B, K, Ca, Mg', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (79, 20, N'Fe, Mn, Zn, Cu', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (80, 20, N'H, O, N, Zn', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (81, 21, N'ma?ch 3'' - 5'' cu?a ADN', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (82, 21, N'ma?ch 5'' - 3'' cu?a ARN', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (83, 21, N'ma?ch 3'' - 5'' cu?a ARN', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (84, 21, N'ma?ch 5'' - 3'' cu?a ADN', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (85, 22, N'các loài khác nhau, cùng s?ng trong m?t không gian xác d?nh và chúng ít quan h? v?i nhau', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (86, 22, N'các loài khác nhau, cùng s?ng trong m?t không gian và th?i gian nh?t d?nh, có m?i quan h? g?n bó v?i nhau nhu m?t th? th?ng nh?t', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (87, 22, N'hai loài khác nhau, cùng s?ng trong m?t không gian xác d?nh và chúng có m?i quan h? m?t thi?t, g?n bó v?i nhau', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (88, 22, N'cùng loài, cùng s?ng trong m?t không gian xác d?nh và chúng có m?i quan h? m?t thi?t, g?n bó v?i nhau.
Câu 8. Khi nói v? các y?u 
', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (89, 23, N'0,3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (90, 23, N'0,5', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (91, 23, N'0,4', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (92, 23, N'0,7', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (93, 24, N'75%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (94, 24, N'100%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (95, 24, N'50%', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (96, 24, N'25%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (97, 25, N'Thay c?p nuclêôtit A-T ba`ng c?p T-A', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (98, 25, N'Thay c?p nuclêôtit A-T b?ng c?p G-X', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (99, 25, N'M?t m?t c?p nuclêôtit.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (100, 25, N'Thêm m?t c?p nuclêôtit', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (101, 26, N'Gen trên NST X không có alen trên Y', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (102, 26, N'Gen trong t? bào ch?t', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (103, 26, N'Gen trên NST thu?ng', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (104, 26, N'Gen trên NST Y có alen trên X.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (105, 27, N'Ð?ng v?t có kh? nang di chuy?n xa và có s? lu?ng l?n', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (106, 27, N'Th?c v?t có kh? nang phát tán m?nh trong m?i di?u ki?n môi tru?ng', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (107, 27, N'Th?c v?t h?t kín, h?t tr?n và bò sát', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (108, 27, N'Ð?ng v?t di chuy?n ch?m ho?c ít có kh? nang di chuy?n', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (109, 28, N'5'' XAA-  AXX - TTX - GGT 3''', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (110, 28, N'5'' GTT - TGG - AAG - XXA 3''', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (111, 28, N'. 5'' TGG - XTT - XXA - AAX 3''', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (112, 28, N'5'' GUU - UGG- AAG - XXA 3''', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (113, 29, N'Giao ph?n (1) x (2) ? (3), r?i ch?n l?c', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (114, 29, N'Nuôi h?t ph?n (1) r?i lai v?i noãn nuôi c?y (2).', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (115, 29, N'Gây d?t bi?n chuy?n do?n nhi?m s?c th?, r?i ch?n l?c', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (116, 29, N'C. Lai xôma (1) x (2) ? mô, r?i nuôi c?y', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (117, 30, N'Xitôzin', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (118, 30, N'Adênin', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (119, 30, N'Timin', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (120, 30, N'Uraxin.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (121, 31, N'37,5 %', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (122, 31, N'18,75%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (123, 31, N'12,5%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (124, 31, N'56,25%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (125, 32, N'2,3,4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (126, 32, N'1,2,4.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (127, 32, N'1,3,4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (128, 32, N'1, 2, 3', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (129, 33, N'Do gen di?u hòa (R) b? d?t bi?n t?o ra protein ?c ch? có c?u hình b? thay d?i.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (130, 33, N'Do gen di?u hòa (R) b? d?t bi?n nên không t?o du?c protein ?c ch?.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (131, 33, N'Do vùng v?n hành (O) b? d?t bi?n nên không liên k?t du?c v?i protein ?c ch?.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (132, 33, N'Do gen c?u trúc (Z, Y, A) b? d?t bi?n làm tang kh? nang bi?u hi?n c?a gen.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (133, 34, N'qu?n xã', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (134, 34, N'qu?n th?', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (135, 34, N'h? sinh thái', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (136, 35, N'R?i lo?n quá trình t? nhân dôi c?a m?t gen ho?c m?t s? gen.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (137, 35, N'Phát sinh m?t ho?c s? alen m?i t? m?t gen.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (138, 35, N'Bi?n d?i ? m?t ho?c vài c?p nucleotit c?a gen.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (139, 35, N'Bi?n d?i ? m?t ho?c vài c?p tính tr?ng c?a co th?.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (140, 36, N'sinh v?t tiêu th? b?c 1, sinh v?t tiêu th? b?c 2, sinh v?t phân gi?i', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (141, 36, N'sinh v?t s?n xu?t, sinh v?t phân gi?i', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (142, 36, N'sinh v?t s?n xu?t, sinh v?t tiêu th?', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (143, 36, N'sinh v?t s?n xu?t, sinh v?t tiêu th? và sinh v?t phân gi?i', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (144, 37, N's?i nhi?m s?c.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (145, 37, N's?i co b?n.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (146, 37, N's?i siêu xo?n.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (147, 37, N'nuclêôxôm.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (148, 38, N'Huy?t áp tâm truong du?c do ?ng v?i lúc tim giãn và có giá tr? l?n nh?t.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (149, 38, N'V?n t?c máu là áp l?c c?a máu tác d?ng lên thành m?ch.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (150, 38, N'D?ch tu?n hoàn g?m máu ho?c h?n h?p máu và d?ch mô', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (151, 38, N'H? tu?n hoàn c?a d?ng v?t g?m 2 thành ph?n là tim và h? m?ch', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (152, 39, N'0,3AA: 0,6Aa: 0,laa', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (153, 39, N'0,5AA: 0,3Aa: 0,2aa', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (154, 39, N'0,1AA: 0,4Aa: 0,5aa', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (155, 39, N'0,9AA: 0,05Aa: 0,05aa', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (156, 40, N'Tinh b?t ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (157, 40, N'AlPG  ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (158, 40, N'APG', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (159, 40, N'Ribulozo – 1,5– diP.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (160, 41, N'1/16', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (161, 41, N'1/2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (162, 41, N'1/32', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (163, 41, N'1/64', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (164, 42, N'AB/ab x AB/ab', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (165, 42, N'AB/aB x aB/ab', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (166, 42, N'AB/ab x ab/ab', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (167, 42, N'Ab/ab x aB/ab', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (168, 43, N'riêng l?, d?t ng?t, gián do?n, có hu?ng. ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (169, 43, N'bi?n d?i d?ng lo?t theo 1 hu?ng xác d?nh', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (170, 43, N'riêng l?, d?t ng?t, gián do?n, vô hu?ng.          ', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (171, 43, N'riêng l?, d?t ng?t, thu?ng có l?i và vô hu?ng.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (172, 44, N'(1)', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (173, 44, N'(2)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (174, 44, N'(3)', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (175, 44, N'(4)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (176, 45, N'(1)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (177, 45, N'(2)', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (178, 45, N'(3)', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (179, 45, N'(4)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (180, 46, N'4', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (181, 46, N'2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (182, 46, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (183, 46, N'1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (184, 47, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (185, 47, N'2', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (186, 47, N'1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (187, 47, N'4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (188, 48, N'1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (189, 48, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (190, 48, N'2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (191, 48, N'4', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (192, 49, N'V?n t?c l?n và du?c di?u ch?nh', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (193, 49, N'V?n t?c bé và không du?c di?u ch?nh', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (194, 49, N'V?n t?c l?n và không du?c di?u ch?nh', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (195, 49, N'V?n t?c bé và du?c di?u ch?nh', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (196, 50, N'Giun d?t, giun d?p, chân kh?p', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (197, 50, N'Cá, ?ch nhái, bò sát', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (198, 50, N'Cá chép, ?c.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (199, 50, N'Giun tròn, giáp xác, th?y t?c.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (200, 50, N'Tôm.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (201, 51, N'T? da b?i', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (202, 50, N'Cua.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (203, 51, N'Ð?t bi?n gen', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (204, 50, N'Cua.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (205, 51, N'Lai xa kèm da b?i hóa', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (206, 51, N'D? da b?i', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (207, 51, N'Lai xa kèm da b?i hóa', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (208, 52, N'vùng kh?i d?ng.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (209, 51, N'D? da b?i', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (210, 52, N'gen di?u hòa.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (211, 52, N'vùng v?n hành.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (212, 52, N'nhóm gen c?u trúc.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (213, 52, N'vùng v?n hành.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (214, 53, N'm?t l?i thành m?t d?t.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (215, 52, N'nhóm gen c?u trúc.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (216, 53, N'm?t tr?ng thành m?t d?.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (217, 53, N'm?t d?t thành m?t l?i.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (218, 53, N'm?t d? thành m?t tr?ng.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (219, 53, N'm?t d?t thành m?t l?i.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (220, 54, N'Các cá th? c?nh tranh nhau gay g?t giành ngu?n s?ng.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (221, 53, N'm?t d? thành m?t tr?ng.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (222, 54, N'Các cá th? h? tr? nhau ch?ng ch?i v?i di?u ki?n b?t l?i c?a môi tru?ng.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (223, 54, N'Các cá th? t?n d?ng du?c ngu?n s?ng ti?m tàng trong môi tru?ng.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (224, 54, N'Gi?m s? c?nh tranh gay g?t gi?a các cá th?.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (225, 54, N'Các cá th? t?n d?ng du?c ngu?n s?ng ti?m tàng trong môi tru?ng.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (226, 55, N'gà và công có t?p tính sinh d?c khác nhau nên không giao ph?i v?i nhau.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (227, 54, N'Gi?m s? c?nh tranh gay g?t gi?a các cá th?.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (228, 55, N'lai gi?a ng?a và l?a sinh ra con la không có kh? nang sinh s?n.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (229, 55, N'c?u t?o hoa ngô và hoa lúa khác nhau nên chúng không th? ph?n du?c cho nhau.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (230, 55, N'hai loài có sinh c?nh khác nhau nên không giao ph?i du?c v?i nhau.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (231, 55, N'c?u t?o hoa ngô và hoa lúa khác nhau nên chúng không th? ph?n du?c cho nhau.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (232, 56, N'Cái Ab/aB Dd× d?c Ab/aB Dd', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (233, 55, N'hai loài có sinh c?nh khác nhau nên không giao ph?i du?c v?i nhau.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (234, 56, N'Cái Ab/ab Dd× d?c Ab/aB Dd', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (235, 56, N'Cái Ab/aB Dd× d?c AB/ab dd', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (236, 56, N'Cái AB/ab Dd× d?c Ab/aB Dd', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (237, 56, N'Cái Ab/aB Dd× d?c AB/ab dd', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (238, 57, N'du?c s? d?ng s? l?n tuong ?ng v?i s? loài trong chu?i th?c an.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (239, 56, N'Cái AB/ab Dd× d?c Ab/aB Dd', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (240, 57, N'ch? du?c s? d?ng m?t l?n r?i m?t di du?i d?ng nhi?t.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (241, 57, N'du?c s? d?ng t?i thi?u 2 l?n.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (242, 57, N'du?c s? d?ng l?p di l?p l?i nhi?u l?n.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (243, 57, N'du?c s? d?ng t?i thi?u 2 l?n.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (244, 58, N'120', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (245, 57, N'du?c s? d?ng l?p di l?p l?i nhi?u l?n.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (246, 58, N'121', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (247, 58, N'119', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (248, 58, N'121', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (249, 58, N'118', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (250, 58, N'118', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (251, 59, N'Alen tr?i ph?i có t? l? l?n hon alen l?n.', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (252, 59, N'Không có hi?n tu?ng di cu và nh?p cu, không x?y ra CLTN.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (253, 59, N'Kích thu?c qu?n th? ph?i l?n, x?y ra giao ph?i t? do gi?a các cá th?.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (254, 59, N'Không có d?t bi?n.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (255, 59, N'Không có d?t bi?n.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (256, 60, N'K?t qu? c?a ch?n l?c t? nhiên là hình thành nên loài sinh v?t có các d?c di?m thích nghi v?i môi tru?ng', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (257, 60, N'S? lu?ng các cá th? có các bi?n d? thích nghi s? ngày m?t tang', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (258, 60, N'Ch?n l?c t? nhiên là s? phân hóa v? kh? nang s?ng sót và kh? nang sinh s?n c?a các cá th? trong qu?n th?', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (259, 60, N'Ch?n l?c t? nhiên d?n d?n hình thành các qu?n th? có nhi?u cá th? mang các ki?u gen quy d?nh các d?c ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (260, 60, N'Ch?n l?c t? nhiên d?n d?n hình thành các qu?n th? có nhi?u cá th? mang các ki?u gen quy d?nh các d?c ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (261, 61, N'2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (262, 61, N'4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (263, 61, N'1', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (264, 61, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (265, 61, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (266, 62, N'(1)', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (267, 62, N'(2)', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (268, 62, N'(3)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (269, 62, N'(4)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (270, 62, N'(2) và (3)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (271, 62, N'(3) và (4)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (272, 62, N'(3) và (4)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (273, 63, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (274, 63, N'2', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (275, 63, N'1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (276, 63, N'4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (277, 63, N'0', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (278, 63, N'0', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (279, 64, N'2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (280, 64, N'1', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (281, 64, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (282, 64, N'4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (283, 64, N'0', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (284, 64, N'0', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (285, 65, N'Ca(OH)2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (286, 65, N'HCl', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (287, 65, N'NaOH', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (288, 65, N'Na2CO3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (289, 66, N'? tr?ng thái k?t tinh amino axit t?n t?i ? d?ng ion lu?ng c?c.', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (290, 66, N'Trimetylamin là ch?t khí ? di?u ki?n thu?ng', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (291, 66, N'Triolein là este no, m?ch h?', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (292, 66, N'Nh?a bakelit có c?u trúc m?ng không gian', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (293, 66, N'Ru?i etylic ? th? khí', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (294, 66, N'axit axetic là axit no', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (295, 67, N'[He]2s1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (296, 67, N'[Ne]3s2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (297, 67, N'[Kr]4s1', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (298, 67, N'[Ne]3s1', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (299, 68, N'11,05', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (300, 68, N'15,6', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (301, 68, N'17,5', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (302, 68, N'21,4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (303, 69, N'CH2=CHCOOCH3', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (304, 69, N'CH3COOCH3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (305, 69, N'CH3COOCH2CH3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (306, 69, N'HCOOCH3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (307, 70, N'K', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (308, 70, N'KCl', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (309, 70, N'N', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (310, 70, N'K2O', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (311, 71, N'Na', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (312, 71, N'Dung d?ch Br2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (313, 71, N'H2 (Ni, t°C)', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (314, 71, N'NaOH', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (315, 71, N'CH3COOH', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (316, 71, N'KOH', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (317, 72, N'Al, Fe, Zn, Cu', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (318, 72, N'Fe, Al2O3, ZnO, Cu', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (319, 72, N'Al2O3, Fe, Zn, Cu', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (320, 72, N'Fe2O3, Al2O3, ZnO, Cu', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (321, 73, N'12,96', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (322, 73, N'6,25', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (323, 73, N'25,00', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (324, 73, N'13,00', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (325, 74, N'Fe(NO3)2 + NH3', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (326, 74, N'FeSO4 + KMnO4 + H2SO4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (327, 74, N'Fe(NO3)3 + NaOH', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (328, 74, N'Fe2(SO4)3 + KI', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (329, 75, N'6', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (330, 75, N'4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (331, 75, N'7', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (332, 75, N'5', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (333, 76, N'2,24', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (334, 76, N'22,27', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (335, 76, N'27,52', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (336, 76, N'22,72', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (337, 77, N'HNO3 và HNO2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (338, 77, N'HNO3 và H2SO4', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (339, 77, N'HNO3 và H2CO3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (340, 77, N'H2SO4 và H2SO3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (341, 78, N'5', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (342, 78, N'6', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (343, 78, N'4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (344, 78, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (345, 79, N'HOCH2CH2CHO', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (346, 79, N'C2H5COOH', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (347, 79, N'HCOOC2H5', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (348, 79, N'CH3COOCH3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (349, 80, N'1,8 gam', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (350, 80, N'2,7 gam', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (351, 80, N'1,08 gam', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (352, 80, N'3 gam  ', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (353, 81, N'72,13%', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (354, 81, N'56,36%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (355, 81, N'50%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (356, 81, N'42,5%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (357, 82, N'10', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (358, 82, N'17', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (359, 82, N'12', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (360, 82, N'9', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (361, 83, N'40%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (362, 83, N'25%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (363, 83, N'12%', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (364, 83, N'70%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (365, 84, N'2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (366, 84, N'3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (367, 84, N'4', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (368, 84, N'5', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (369, 85, N'3,2', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (370, 85, N'1,6', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (371, 85, N'1,4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (372, 85, N'2,5', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (373, 86, N'48', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (374, 86, N'50', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (375, 86, N'44', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (376, 86, N'60', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (377, 87, N'57,14%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (378, 87, N'42,86% ', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (379, 87, N'28,57%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (380, 87, N'85,71', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (381, 88, N'1,12 lít', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (382, 88, N'1,344 lít', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (383, 88, N'2,24 lít', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (384, 88, N'0,672 lít', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (385, 89, N'Fe(NO3)2', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (386, 89, N'Cu(NO3)2. ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (387, 89, N'HNO3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (388, 89, N'Fe(NO3)3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (389, 90, N'3,84', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (390, 90, N'4', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (391, 90, N'2,25', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (392, 90, N'1,2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (393, 91, N'89.12', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (394, 91, N'19,72%', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (395, 91, N'29,13%. ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (396, 91, N'12.09', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (397, 92, N'40% và 60%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (398, 92, N'50% và 50%. ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (399, 92, N'20% và 80%. ', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (400, 92, N'25% và 75%', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (401, 93, N'0,2', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (402, 93, N'0,15', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (403, 93, N'0,25', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (404, 93, N'0,3', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (405, 94, N'3,06', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (406, 94, N'4,4', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (407, 94, N'2.25', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (408, 94, N'1,25', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (409, 95, N'8,85', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (410, 95, N'7,25', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (411, 95, N'6.125', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (412, 95, N'3,56', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (413, 96, N'11,24%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (414, 96, N'14,87%. ', 1)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (415, 96, N'56,16%', 0)
GO
INSERT [dbo].[Answer] ([AnswerId], [QuestionId], [Content], [IsCorrect]) VALUES (416, 96, N'24,56%.', 0)
GO
SET IDENTITY_INSERT [dbo].[Answer] OFF
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (1, 1, N'Fe', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (2, 1, N'Cu', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (3, 1, N'Ag', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (4, 1, N'Al', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (5, 2, N'NH3 và HCl', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (6, 2, N'CO2 và O2', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (7, 2, N'H2S và N2', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (8, 2, N'SO2 và NO2', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (9, 3, N'Mg', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (10, 3, N'Fe', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (11, 3, N'Al', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (12, 3, N'Zn', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (13, 4, N'amoniac', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (15, 4, N'kali hidroxit', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (16, 4, N'anilin', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (17, 4, N'lysin', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (18, 5, N'N2', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (19, 5, N'NO2', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (20, 5, N'NO', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (21, 5, N'N2O', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (22, 6, N'Hg', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (23, 6, N'W', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (24, 6, N'Os', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (25, 6, N'Cr', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (26, 7, N'KHCO3', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (27, 7, N'KMnO4', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (28, 7, N'Na2CO3', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (29, 7, N'Cu(NO3)2', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (30, 8, N'alanin', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (31, 8, N'glyxin', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (32, 8, N'valin', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (33, 8, N'axit glutamic', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (34, 9, N'3', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (35, 9, N'1', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (36, 9, N'2', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (37, 9, N'4', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (38, 10, N'2', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (39, 10, N'1', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (40, 10, N'3', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (41, 10, N'4', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (42, 11, N'3,36', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (43, 11, N'1,68', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (44, 11, N'2,24', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (45, 11, N'4,48', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (46, 12, N'CuO', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (47, 12, N'Al2O3', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (48, 12, N'MgO', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (49, 12, N'Fe2O3', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (50, 13, N'5', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (51, 13, N'8', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (52, 13, N'6', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (53, 13, N'7', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (54, 14, N'5', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (55, 14, N'4', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (56, 14, N'2', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (57, 14, N'3', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (58, 15, N'64,8', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (59, 15, N' 86,4', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (60, 15, N'54,0', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (61, 15, N'108,0', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (62, 16, N'90,6 gam', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (63, 16, N'112 gam', 1)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (64, 16, N'26,6 gam', 0)
GO
INSERT [dbo].[AnswerDistribute] ([AnswerDistributeId], [QuestionDistributeId], [Content], [IsCorrect]) VALUES (65, 16, N'64 gam', 0)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'10ANH', 10, N'10 Chuyên Anh', 2019)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'10HOA', 10, N'10 Chuyên Hoá', 2019)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'10KC', 10, N'10 Không Chuyên', 2019)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'10LY', 10, N'10 Chuyên Lý', 2019)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'10SINH', 10, N'10 Chuyên Sinh', 2019)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'10TOAN', 10, N'10 Chuyên Toán', 2019)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'11ANH', 11, N'11 Chuyên Anh', 2018)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'11HOA', 11, N'11 Chuyên Hoá', 2018)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'11KC', 11, N'11 Không Chuyên', 2018)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'11LY', 11, N'11 Chuyên Lý', 2018)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'11SINH', 11, N'11 Chuyên Sinh', 2018)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'11TOAN', 11, N'11 Chuyên Toán', 2018)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'12ANH', 12, N'12 Chuyên Anh', 2017)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'12HOA', 12, N'12 Chuyên Hoá', 2017)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'12KC', 12, N'12 Không Chuyên', 2017)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'12LY', 12, N'12 Chuyên Lý', 2017)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'12SINH', 12, N'12 Chuyên Sinh', 2017)
GO
INSERT [dbo].[Classroom] ([ClassroomId], [GradeId], [ClassName], [Year]) VALUES (N'12TOAN', 12, N'12 Chuyên Toán', 2017)
GO
INSERT [dbo].[Exam] ([ExamId], [ExamName], [IsPacticeExam]) VALUES (N'CT000001', N'Thi chính thức môn Hoá', 0)
GO
INSERT [dbo].[Exam] ([ExamId], [ExamName], [IsPacticeExam]) VALUES (N'CT000002', N'Thi chính thức môn Sinh', 0)
GO
INSERT [dbo].[Exam] ([ExamId], [ExamName], [IsPacticeExam]) VALUES (N'TT000001', N'Thi thử Hoá học lần 1', 1)
GO
INSERT [dbo].[Exam] ([ExamId], [ExamName], [IsPacticeExam]) VALUES (N'TT000002', N'Thi thử Hoá học lần 2', 1)
GO
INSERT [dbo].[Exam] ([ExamId], [ExamName], [IsPacticeExam]) VALUES (N'TT000003', N'Thi thử Sinh học lần 1', 1)
GO
INSERT [dbo].[Exam] ([ExamId], [ExamName], [IsPacticeExam]) VALUES (N'TT000004', N'Thi thử Sinh học lần 2', 1)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000001', 16, N'MH11005', 11, 1)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000002', 16, N'MH11005', 11, 0)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000003', 16, N'MH11005', 11, 1)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000004', 16, N'MH11005', 11, 0)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000005', 16, N'MH12003', 12, 0)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000006', 16, N'MH12003', 12, 0)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000007', 16, N'MH12003', 12, 0)
GO
INSERT [dbo].[ExamCode] ([ExamCodeId], [NumberOfQuestions], [SubjectId], [GradeId], [IsPracticeExam]) VALUES (N'DE000008', 16, N'MH12003', 12, 1)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 1)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 2)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 3)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 4)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 5)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 6)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 7)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 8)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 9)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 10)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 11)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 12)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 13)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 14)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 15)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000001', 16)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 17)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 18)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 19)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 20)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 21)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 22)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 23)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 24)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 25)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 26)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 27)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 28)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 29)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 30)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 31)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000002', 32)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 33)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 34)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 35)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 36)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 37)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 38)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 39)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 40)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 41)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 42)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 43)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 44)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 45)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 46)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 47)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000003', 48)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 49)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 50)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 51)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 52)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 53)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 54)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 55)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 56)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 57)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 58)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 59)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 60)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 61)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 62)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 63)
GO
INSERT [dbo].[ExamCode_Question] ([ExamCodeId], [QuestionId]) VALUES (N'DE000004', 64)
GO
INSERT [dbo].[ExamDetail] ([ExamDetailId], [ExamId], [StartTime], [Duration], [SubjectId], [GradeId]) VALUES (N'KT000001', N'TT000003', CAST(N'2019-12-19 07:00:00.000' AS DateTime), 60, N'MH11005', 11)
GO
INSERT [dbo].[ExamDetail] ([ExamDetailId], [ExamId], [StartTime], [Duration], [SubjectId], [GradeId]) VALUES (N'KT000002', N'TT000002', CAST(N'2019-12-19 07:00:00.000' AS DateTime), 60, N'MH12003', 12)
GO
INSERT [dbo].[ExamDetail] ([ExamDetailId], [ExamId], [StartTime], [Duration], [SubjectId], [GradeId]) VALUES (N'KT000003', N'CT000001', CAST(N'2019-12-25 07:00:00.000' AS DateTime), 60, N'MH12003', 12)
GO
INSERT [dbo].[ExamDetail] ([ExamDetailId], [ExamId], [StartTime], [Duration], [SubjectId], [GradeId]) VALUES (N'KT000004', N'CT000002', CAST(N'2019-12-26 07:00:00.000' AS DateTime), 60, N'MH11005', 11)
GO
INSERT [dbo].[ExamResult] ([ExamDetailId], [StudentId], [NumberOfQuestionsAnswered], [NumberOfCorrectAnswers], [Mark], [ExamCodeId]) VALUES (N'KT000001', N'HS0000002', 16, 15, 9.375, N'DE000001')
GO
INSERT [dbo].[ExamResult] ([ExamDetailId], [StudentId], [NumberOfQuestionsAnswered], [NumberOfCorrectAnswers], [Mark], [ExamCodeId]) VALUES (N'KT000002', N'HS0000001', 16, 10, 6.25, N'DE000008')
GO
INSERT [dbo].[ExamResult] ([ExamDetailId], [StudentId], [NumberOfQuestionsAnswered], [NumberOfCorrectAnswers], [Mark], [ExamCodeId]) VALUES (N'KT000003', N'HS0000001', 16, 16, 10, N'DE000007')
GO
INSERT [dbo].[ExamResult] ([ExamDetailId], [StudentId], [NumberOfQuestionsAnswered], [NumberOfCorrectAnswers], [Mark], [ExamCodeId]) VALUES (N'KT000004', N'HS0000002', 16, 13, 8.125, N'DE000004')
GO
INSERT [dbo].[ExamTake] ([ExamDetailId], [StudentId], [StartTime], [EndTime], [ExamCodeId]) VALUES (N'KT000001', N'HS0000002', CAST(N'2019-12-19 07:00:00.000' AS DateTime), CAST(N'2019-12-19 08:00:00.000' AS DateTime), N'DE000001')
GO
INSERT [dbo].[ExamTake] ([ExamDetailId], [StudentId], [StartTime], [EndTime], [ExamCodeId]) VALUES (N'KT000002', N'HS0000001', CAST(N'2019-12-19 07:00:00.000' AS DateTime), CAST(N'2019-12-19 08:00:00.000' AS DateTime), N'DE000008')
GO
INSERT [dbo].[ExamTake] ([ExamDetailId], [StudentId], [StartTime], [EndTime], [ExamCodeId]) VALUES (N'KT000003', N'HS0000001', CAST(N'2019-12-25 07:00:00.000' AS DateTime), CAST(N'2019-12-25 08:00:00.000' AS DateTime), N'DE000007')
GO
INSERT [dbo].[ExamTake] ([ExamDetailId], [StudentId], [StartTime], [EndTime], [ExamCodeId]) VALUES (N'KT000004', N'HS0000002', CAST(N'2019-12-26 07:00:00.000' AS DateTime), CAST(N'2019-12-26 08:00:00.000' AS DateTime), N'DE000004')
GO
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (10, N'Khối 10')
GO
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (11, N'Khối 11')
GO
INSERT [dbo].[Grade] ([GradeId], [GradeName]) VALUES (12, N'Khối 12')
GO
SET IDENTITY_INSERT [dbo].[Question] ON 

GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (1, N'Hiện tượng con lai có năng suất, phẩm chất, sức chống chịu, khả năng sinh trưởng và phát triển vượt trội bố mẹ gọi là', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (2, N'Ở sinh vật nhân thực, vùng đầu mút của nhiễm sắc thể', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (3, N'Khi nói về quá trình hình thành loài mới, phát biểu nào sau đây đúng?', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (4, N'Nơi ở là', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (5, N'Theo quan niệm của Đacuyn, nguồn nguyên liệu chủ yếu của quá trình tiến hóa là', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (6, N'Sản phẩm của pha sáng gồm', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (7, N'Cây hấp thụ nitơ ở dạng', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (8, N'Ở cà chua, alen B quy định thân cao là trội hoàn toàn so với alen b quy định thân thấp. Cho cây tứ bội có kiểu gen BBBb tự thụ phấn thu được F1. Trong số cây thân cao ở F1, tỉ lệ cây F1 tự thụ phấn cho đời con toàn cây thân cao thuần chủng là bao nhiêu? Biết quá trình giảm phân bình thường, cây 4n tạo giao tử 2n đều có khả năng thụ tinh và không xảy ra đột biến.', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (9, N'Cho các thông tin về vai trò của các nhân tố tiến hóa như sau:
1. Làm thay đổi tần số alen và thành phần kiểu gen của quần thể theo một hướng xác định.
2. Làm phát sinh các biến dị di truyền của quần thể, cung cấp nguồn nguyên liệu chủ yếu cho quá trình tiến hóa.
3. Có thể loại bỏ hoàn toàn một alen nào đó ra khỏi quần thể cho dù alen đó là có lợi.
4. Không làm thay đổi tần số alen nhưng làm thay đổi thành phần kiển gen của quần thể.
5. Làm thay đổi tần số alen và thành phần kiểu gen của quần thể rất chậm.
Các thông tin nói về vai trò của đột biến gen là
', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (10, N'Giả sử một quần thể động vật có 200 cá thể. Trong đó 60 cá thể có kiểu gen AA; 40 cá thể có kiểu gen Aa; 100 cá thể có kiểu gen aa, tần số của alen A trong quần thể trên là', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (11, N'B dài 221 nm và có 1669 liên kết hiđrô, alen B bị đột biến thành alen b. Từ một tế bào chứa cặp gen Bb qua hai lần nguyên phân bình thường, môi trường nội bào đã cung cấp cho quá trình nhân đôi của cặp gen này 1689 nuclêôtit loại timin và 2211 nuclêôtit loại xitôzin. Dạng đột biến đã xảy ra với alen B là', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (12, N'Ở một loài thực vật, alen A quy định thân cao trội hoàn toàn so với alen a quy định thân thấp, alen B quy định quả đỏ trội hoàn toàn so với alen b quy định quả vàng. Cho cây thân cao, quả đỏ giao phấn với cây thân cao, quả đỏ (P) thu được ở F1 có 4 kiểu hình. Trong đó, số cây có kiểu hình thân thấp, quả vàng chiếm tỉ lệ 1%. Biết rằng không xảy ra đột biến. Tính theo lí thuyết, tỉ lệ kiểu hình thân cao, quả đỏ có kiểu gen đồng hợp tử về cả hai cặp gen nói trên ở F1 là', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (13, N'Ở một loài động vật ngẫu phối, biết alen A qui định lông dài trội hoàn toàn so với alen a qui định lông ngắn. Cho một số quần thể của loài trên có cấu trúc di truyền như sau:
(1). Quần thể có 100% các cá thể có kiểu hình lông dài.
(2). Quần thể có 100% các cá thể có kiểu hình lông ngắn.
(3). Quần thể có thành phần kiểu gen: 0,49AA : 0,42Aa: 0,09aa.
(4). Quần thể có thành phần kiểu gen: 0,4AA : 0,4Aa: 0,2aa.
Trong các quần thể trên, có mấy quần thể chắc chắn đạt trạng thái cân bằng di truyền?
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (14, N'Ở một loài thực vật, tính trạng màu sắc hoa do 2 cặp gen không alen quy định. Lai hai cây có kiểu hình khác nhau thu được F1. Cho các cây F1 giao phấn ngẫu nhiên, thu được F2 gồm 56,25% cây hoa trắng và 43,75% cây hoa đỏ. Biết rằng không xảy ra đột biến. Theo lý thuyết, trong tổng số cây thu được ở F¬2, số cây hoa đỏ mang alen trội chiếm tỉ lệ', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (15, N'Ở đậu Hà Lan, alen A (hoa mọc ở trục) trội hoàn toàn so với alen a (hoa mọc đỉnh), alen B (màu đỏ) trội hoàn toàn so với alen b (màu trắng). Lai 2 cơ thể thuần chủng khác nhau về 2 cặp tính trạng tương phản thu được F1 100% hoa mọc ở trục, màu đỏ. Cho F1 giao phấn với nhau thu được F2. Theo lý thuyết, trong số các cây thu được ở F2 , số cây dị hợp một cặp gen chiếm tỉ lệ là bao nhiêu? Biết các gen phân li độc lập, giảm phân bình thường, không có đột biến xảy ra', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (16, N'Ở người, gen qui định nhóm máu ABO gồm 3 alen IA, IB, I0 nằm trên NST thường. Trong đó alen IA, IB là đồng trội so với alen I0. Xét một quần thể người cân bằng di truyền có tần số các alen IA = 0,5; IB = 0,3; I0 = 0,2. Một cặp vợ chồng trong quần thể này đều có nhóm máu B. Xác suất để cặp vợ chồng này sinh con trai đầu lòng có nhóm máu O là', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (17, N' Ở sâu bọ, hệ tuần hoàn hở chỉ thực hiện chức năng nào?', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (18, N'Trong chuỗi thức ăn: cỏ → cá → vịt → người thì một loài động vật bất kì có thể được xem là', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (19, N'Tập hợp các cá thể  cùng loài, cùng sinh sống trong một khoảng không gian xác định, thời gian nhất định, có khả năng sinh sản là đặc điểm của đơn vị nào nào sau đây:', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (20, N'Nhóm nào dưới đây gồm toàn những nguyên tố vi lượng được xem là nguyên tố khoáng thiết yếu cần thiết đối với sinh trưởng của mọi loài thực vật?', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (21, N'Trong quá trình nhân đôi ADN, mạch mới được tổng hợp liên tục trên mạch khuôn nào?', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (22, N'Quần xã sinh vật là tập hợp nhiều quần thể sinh vật thuộc', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (23, N'Một quần thể có thành phần kiểu gen là:  . Tần số alen A của quần thể này là bao nhiêu? ', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (24, N'Cho biết các gen liên kết hoàn toàn và không xảy ra đột biến. Theo lí thuyết, cho cây có kiểu gen   tự thụ phấn thu được đời con có kiểu gen đồng hợp chiếm tỉ lệ', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (25, N'Dạng đột biến điểm nào sau đây xảy ra trên gen không làm thay đổi số lượng nuclêôtit của gen nhưng làm thay đổi số lượng liên kết hiđrô trong gen?', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (26, N'Xét 2 phép lai: P: ♀ móng bé x ♂ móng lớn  F1: 100% móng bé và P: ♀ móng lớn x ♂ móng bé   F1: 100% móng lớn. Tính trạng kích thước móng do gen nào sau đây quy định?', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (27, N'. Hình thành loài mới bằng cách li sinh thái thường gặp ở những đối tượng nào? ', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (28, N'Một đoạn pôlipeptit gồm 4 axit amin có trình tự: Val - Trp - Lys- Pro. Biết rằng các côđon mã hóa các axit amin tương ứng như sau: Trp - UGG ; Val - GUU; Lys - AAG ; Pro - XXA. Đoạn mạch gốc của gen mang thông tin mã hóacho đoạn pôlipeptit nói trên có trình tự nuclêôtit là', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (29, N'Giống lúa 1 có gen chống bệnh A, giống 2 có gen chống được bệnh B. Để tạo ra giống lúa mới có cả hai gen này luôn di truyền cùng nhau, có thể dùng phương pháp nào sau đây?', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (30, N'Loạinuclêôtit nào sau đâykhông phải là đơn phân cấu tạo nên phân tử ADN?', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (31, N'Ở ngô, kiểu gen AA quy định màu xanh; Aa màu tím, aa màu trắng. Alen B quy định hạt trơn trội hoàn toàn so với alen b quy định hạt nhăn. Các cặp gen di truyền độc lập với nhau. Bố mẹ dị hợp về cả hai tính trạng giao phấn với nhau, tỉ lệ cây có hạt tím, trơn là:', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (32, N'Cho giao phấn giữa cây hoa đỏ thuần chủng với cây hoa trắng thuần chủng được F1 toàn hoa đỏ, cho F1 tự thụ phấn thu được tỉ lệ kiểu hình F2 là 3 cây hoa đỏ : 1 cây hoa trắng. Để xác định kiểu gen của cây hoa đỏ F2 có thể thực hiện các phép lai sau đây: 
1. Lai cây hoa đỏ F2 với cây F1.
2. Lai phân tích cây hoa đỏ F2.
3. Cho cây hoa đỏ F2  tự thụ phấn.	
4. Lai cây hoa đỏ F2 với cây đỏ ở P.
Những phép lai xác định được kiểu gen của cây hoa đỏ là
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (33, N'M?t Opêron Lac ? Ecoli, khi môi tr?ng không có lactôzo nhung enzim chuy?n hóa lactôzo v?n du?c t?o ra. M?t h?c sinh dã dua ra m?t s? gi?i thích cho hi?n tu?ng trên nhu sau, nh?n d?nh nào chua dúng?', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (34, N'Nh?ng con voi trong vu?n bách thú là', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (35, N'Ð?t bi?n gen là', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (36, N'Thành ph?n h?u sinh c?a h? sinh thái g?m', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (37, N'M?c xo?n 1 trong c?u trúc siêu hi?n vi c?a nhi?m s?c th? ? sinh v?t nhân th?c g?i là', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (38, N'Phát bi?u nào sau dây dúng', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (39, N'? th?c v?t, A qui d?nh hoa d?; a qui d?nh hoa tr?ng. Th? h? P có t? l? ki?u hình 9 hoa d? và 1 hoa tr?ng, sau 3 th? hê t? th?, ? F3 cây có ki?u gen d? h?p chi?m 7,5%. Theo lí thuy?t, c?u trúc P là?', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (40, N'Trong quang h?p n?u pha sáng b? ng?ng tr? thì s?n ph?m nào trong pha t?i s? tang?', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (41, N'Xét phép lai P: AaBbDd x aabbDd. Các gen phân li d?c l?p. Th? h? F1 thu du?c ki?u gen AaBbdd v?i t? l?', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (42, N'? m?t loài th?c v?t, alen A quy d?nh qu? ng?t; a quy d?nh qu? chua; B quy d?nh hoa d?; b quy d?nh hoa tr?ng. Hai c?p gen cùng n?m trên 1 c?p nhi?m s?c th? tuong d?ng và liên k?t hoàn toàn. Phép lai nào du?i dây cho t? l? phân ly ki?u hình 50% ng?t, hoa d? : 50% chua, hoa tr?ng?', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (43, N'Tính ch?t bi?u hi?n c?a d?t bi?n gen là :', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (44, N'Cho nh?ng nh?n d?nh sau v? quá trình phát sinh loài ngu?i:', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (45, N'Câu 15: Theo quan di?m c?a h?c thuy?t ti?n hoá t?ng h?p, xét các phát bi?u sau dây:
(1) Ch?n l?c t? nhiên ch? tác d?ng khi môi tru?ng s?ng thay d?i.
(2) Ti?n hóa nh? và ti?n hóa l?n di?n ra song song v?i nhau. 
(3) Giao ph?i g?n không làm thay d?i t?n s? tuong d?i c?a các alen trong qu?n th?.
(4) Ð?t bi?n t?o ngu?n nguyên li?u th? c?p cho ti?n hóa.
T? h?p nh?n xét dúng là?
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (46, N'Có bao nhiêu phát bi?u sau dây dúng khi nói v? quang h?p?
(1). Ð? t?o ra du?c m?t phân t? C6H12O6 c?n có s? tham gia c?a 12 phân t? H2O.
(2). Trong các s?c t? quang h?p, ch? có di?p l?c a tham gia tr?c ti?p vào s? chuy?n hóa nang lu?ng ánh sáng h?p th? du?c thành nang lu?ng c?a các liên k?t hóa h?c trong ATP và NADPH.
(3). S?n ph?m c?a phá sáng chuy?n cho pha t?i là ATP và NADPH.
(4). ? th?c v?t CAM, ch?t nh?n CO2 d?u tiên c?a quá trình quang h?p là PEP.
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (47, N'Khi nói v? nh?ng xu hu?ng bi?n d?i chính trong quá trình di?n th? sinh thái d? thi?t l?p
tr?ng thái cân b?ng, có các phát bi?u sau:
(1). Các y?u t? c?u trúc, m?i quan h? gi?a các loài trong qu?n xã và gi?a qu?n xã v?i môi tru?ng
d?u thay d?i, tru?c h?t là s? thay d?i c?a m?i quan h? gi?a qu?n xã và môi tru?ng.
(2). Lu?i th?c an tr? nên ph?c t?p, chu?i th?c an m? d?u là sinh v?t s?n xu?t ngày càng quan tr?ng.
(3). Kích thu?c và tu?i th? c?a các loài d?u tang lên.
(4). Kh? nang tích luy các ch?t dinh du?ng trong qu?n xã ngày m?t gi?m và qu?n xã s? d?ng nang
lu?ng ngày càng hoàn h?o. 
Có bao nhiêu phát bi?u dúng?', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (48, N'M?t loài th?c v?t, tính tr?ng màu hoa do hai c?p gen quy d?nh. Cho hai cây d?u có hoa h?ng (P) giao ph?n v?i nhau, thu du?c   g?m 100% cây hoa d?. Cho các cây   t? th? ph?n, thu du?c  có ki?u hình phân li theo t? l? : 56,25% cây hoa d?: 37,5% cây hoa h?ng: 6,25% cây hoa tr?ng. Bi?t r?ng không x?y ra d?t bi?n. Theo lí thuy?t, có bao nhiêu phát bi?u sau dây dúng?
(1).   có 4 lo?i ki?u gen quy d?nh ki?u hình hoa d?.
(2). Trong t?ng s? cây hoa h?ng ?  , s? cây có ki?u gen d? h?p t? chi?m t? l? 2/3.
(3). Cho t?t c? các cây hoa d? ?   giao ph?n v?i cây hoa tr?ng, thu du?c  có ki?u hình phân li theo t? l? : 4 cây hoa d? : 4 cây hoa h?ng : 1 cây hoa tr?ng.
(4). Cho t?t c? các cây hoa h?ng ?  giao ph?n v?i t?t c? các cây hoa d? ?  , thu du?c   có s? cây hoa h?ng chi?m t? l? 10/27.
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (49, N'Thoát hoi nu?c qua cutin có d?c di?m nào sau dây?', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (50, N'Nhóm d?ng v?t nào sau dây có phuong th?c hô h?p b?ng mang?', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (51, N'Hi?n tu?ng nào sau dây có th? hình thành loài m?i m?t cách nhanh chóng mà không c?n cách ly d?a lý?', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (52, N'Trong co ch? di?u hòa ho?t d?ng c?a operon Lac ? vi khu?n E.coli, thành ph?n không thu?c operon là', NULL, N'MH11005', 11, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (53, N'? ru?i gi?m, d?t bi?n l?p do?n trên nhi?m s?c th? gi?i tính X có th? làm bi?n d?i ki?u hình t?', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (54, N'Hình th?c phân b? cá th? theo nhóm trong qu?n th? có ý nghia sinh thái gì?', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (55, N'Ví d? v? cách li sinh s?n sau h?p t? là:', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (56, N'? ru?i gi?m xét 3 c?p gen, hoán v? ? gi?i cái. Phép lai nào sau dây không cho t? l? ki?u hình 1: 2: 1: 3: 6: 3', NULL, N'MH11005', 11, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (57, N'Nang lu?ng khi di qua các b?c dinh du?ng trong chu?i th?c an:', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (58, N'M?t gen có c?u trúc dài 0,408µm. Do d?t bi?n thay th? m?t c?p nuclêôtit này b?ng m?t c?p nuclêôtit khác t?i v? trí nuclêôtit th? 363 dã làm cho mã b? ba t?i dây tr? thành mã không quy d?nh axit amin nào. Hãy cho bi?t phân t? protein th?c hi?n ch?c nang sinh h?c do gen d?t bi?n t?ng h?p có bao nhiêu axit amin?', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (59, N'Ði?u nào sau dây không ph?i là di?u ki?n c?a d?nh lu?t Hacdi - Vanbec?', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (60, N'Theo quan ni?m c?a Ðacuyn v? ch?n l?c t? nhiên, phát bi?u nào sau dây không dúng?', NULL, N'MH11005', 11, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (61, N'? vùng d?t li?n ven bi?n, có 3 loài chim an h?t A, B và C, kích thu?c m? c?a chúng khác nhau vì thích nghi v?i các th?c an khác nhau. ? 3 hòn d?o g?n b?, m?i hòn d?o ch? có 1 trong 3 lo?i chim nói trên và kích thu?c m? c?a chúng l?i khác v?i chính qu?n th? g?c ? d?t li?n. Cho các nh?n d?nh du?i dây v? s? sai khác:
(1). S? khác bi?t v? kích thu?c m? gi?a các cá th? dang sinh s?ng ? hòn d?o chung so v?i các cá th? cùng loài dang sinh s?ng ? hòn d?o riêng là k?t qu? c?a quá trình ch?n l?c t? nhiên theo các hu?ng khác nhau.
(2). Kích thu?c m? có s? thay d?i b?i áp l?c ch?n l?c t? nhiên d?n d?n gi?m b?t s? c?nh tranh gi?a 3 loài s? cùng s?ng ? hòn d?o chung.
(3). S? phân li ? sinh thái dinh du?ng c?a 3 loài s? trên hòn d?o chung giúp chúng có th? chung s?ng v?i nhau.
(4). Kích thu?c khác nhau c?a các lo?i h?t mà 3 loài s? này s? d?ng làm th?c an ? hòn d?o chung là nguyên nhân tr?c ti?p gây ra nh?ng bi?n d?i v? kích thu?c m? c?a c? 3 loài s?.
S? nh?n d?nh chính xác là:
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (62, N'? d?ng v?t, t?i sao khi kích thu?c qu?n th? gi?m m?nh thì t?n s? alen l?i thay d?i nhanh chóng?
(1) Khi kích thu?c gi?m thì qu?n th? ch?u tác d?ng m?nh b?i y?u t? ng?u nhiên do dó có th? làm thay d?i nhanh chóng t?n s? alen.
(2) Kích thu?c gi?m làm cho kh? nang ch?ng ch?u c?a qu?n th? gi?m, CLTN s? tác d?ng làm thay d?i t?n s? alen.
(3) Kích thu?c làm gi?m giao ph?i t? do d?n d?n giao ph?i g?n làm cho t? l? d?ng h?p tang, t? l? d? h?p gi?m.
(4) Kích thu?c gi?m làm cho kh? nang ph?c h?i c?a qu?n th? ch?m, làm các cá th? mang ki?u hình l?n b? gi?m nhi?u d?n d?n t?n s? alen thay d?i nhanh chóng.
Cách gi?i thích h?p lí nh?t là:
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (63, N'Huy?t áp gi?m d?n trong các h? m?ch vì nh?ng nguyên nhân sau dây:
I. Càng xa tim thì l?c ma sát gi?a thành m?ch và máu càng gi?m.
II. Càng xa tim thì áp l?c c?a máu do s? co bóp c?a tim càng gi?m.
III. L?c ma sát gi?a các ph?n t? c?a máu
IV. Ð? dày thành m?ch máu gi?m d?n t? d?ng m?ch ch? d?n d?ng m?ch nh? d?n mao m?ch và v? tinh m?ch.
Có bao nhiêu nguyên nhân là dúng?
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (64, N'Khi nói v? c?u trúc c?a m?ng lu?i th?c an, xét các k?t lu?n sau:
(1) M?i h? sinh thái có m?t ho?c nhi?u m?ng lu?i dinh du?ng.
(2) M?ng lu?i dinh du?ng càng da d?ng thì h? sinh thái càng kém ?n d?nh.
(3) C?u trúc c?a m?ng lu?i dinh du?ng thay d?i theo mùa, theo môi tru?ng.
(4) Khi b? m?t m?t m?t xích nào dó v?n không làm thay d?i c?u trúc c?a m?ng lu?i.
Có bao nhiêu k?t lu?n dúng?
', NULL, N'MH11005', 11, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (65, N'Chất nào sau đây không làm mất tính cứng của nước cứng tạm thời ?', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (66, N'Phát biểu nào sau đây sai ?', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (67, N'Cấu hình electron của nguyên tử Na là', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (68, N'Cho 100 ml dung dịch gồm MgCl2 1M và AlCl3 2M tác dụng với 500 ml dung dịch Ba(OH)2 0,85M thu được m g kết tủa là:', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (69, N'Đốt cháy hoàn toàn este nào sau đây thu được số mol CO2 lớn hơn số mol H2O', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (70, N'Để đánh giá độ dinh dưỡng của phân kali người ra dựa vào hàm lượng phần trăm của X trong phân tử. X là', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (71, N'Phenol và etanol đều phản ứng với', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (72, N'Dẫn khí CO dư qua hỗn hợp X (đốt nóng) gồm Fe2O3, Al2O3, ZnO, CuO phản ứng hoàn toàn thu được chất rắn Y gồm', NULL, N'MH12003', 12, 1, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (73, N'Lên men m gam glucozơ với hiệu suất 72%. Lượng CO2 sinh ra được hấp thụ hoàn toàn vào 500ml dung dịch hỗn hợp gồm NaOH 0,1M và Ba(OH)2 0,2M, sinh ra 9,85 gam kết tủa. Giá trị lớn nhất của m là', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (74, N'Phản ứng nado sau đây xảy ra trong dung dịch tạo kết tủa Fe(OH)2', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (75, N'Cho dãy các chất sau: metan, axetilen, isopren, benzen, axit axetic, stiren, axeton, metyl acrylat. Số chất trong dãy tác dụng được với H2 nung nóng, xúc tác Ni là', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (76, N'Cho m gam hỗn hợp gồm Fe, FeO, Fe2O3 và Fe3O4 phản ứng hết với dung dịch HNO3 loãng dư thu được 2,688 lít khí NO (sản phẩm khử duy nhất, đktc) và dung dịch X. Cho dung dịch X tác dụng với dung dịch NaOH dư thu được kết tủa. Lọc kết tủa nung trong không khí đến khối lượng không đổi được 25,6 gam chất rắn khan. Giá trị của m là', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (77, N'Mưa axit là một trong những hiện tượng thể hiện sự ô nhiễm môi trường, thường gặp ở các khu công nghiệp và những khu vực lân cận. Mưa axit phá hủy nhiều công trình xây dựng, ảnh hưởng lớn đến môi trường đất, nước... Tác hại của mưa axit được gây ra chủ yếu bởi axit', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (78, N'Cho các chất: Fe3O4, FeCO3, Fe(NO3)3, Fe(OH)2, Fe(OH)3, NaCl, KI, K2S. Số chất bị dung dịch H2SO4 đặc oxi hóa là', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (79, N'X là hợp chất hữu cơ mạch hở có công thức C3H6O2. X tác dụng với dung dịch NaOH thu được
một muối và ancol etylíc, X không tác dụng với Na. Công thức cấu tạo của X là
', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (80, N'Khối lượng glucozơ cần dùng để tạo ra 1,82 gam sobitol với hiệu suất 60% là', NULL, N'MH12003', 12, 2, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (81, N'. Đốt cháy 4,425 gam hỗn hợp gồm Zn và Fe (có tỉ lệ mol tương ứng là 1 : 2) với hỗn hợp khí X gồm clo và oxi, sau phản ứng chỉ thu được hỗn hợp Y gồm các oxit và muối clorua (không còn khí dư). Hòa tan Y bằng lượng vừa đủ 120 ml dung dịch HCl 1M thu được dung dịch Z. Cho dung dịch AgNO3 dư vào Z, thu được 28,345 gam kết tủa. Phần trăm khối lượng của clo trong X là', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (82, N'Hỗn hợp X gồm Al, Fe2O3, Fe3O4, CuO trong đó oxi chiếm 25,39% khối lượng hỗn hợp. Cho m gam hỗn hợp
X tác dụng với 13,44 lít CO (đktc) sau một thời gian thu được chất rắn Y và hỗn hợp khí Z có tỉ khối so với
hiđro là 19. Cho chất rắn Y tác dụng với dung dịch HNO3 loãng dư thu được dung dịch T và 10,752 lít NO
(đktc, sản phẩm khử duy nhất). Cô cạn dung dịch T thu được 5,184m gam muối khan. Giá trị m gần nhất với
', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (83, N'Cho X, Y, Z là ba peptit mạch hở và MX > MY > MZ. Đốt cháy hoàn toàn a mol mỗi peptit X, Y hoặc Z đều thu được số mol CO2 nhiều hơn số mol H2O là a mol. Mặt khác, đun nóng 69,8 gam hỗn hợp E chứa X, Y và 0,16 mol Z (số mol của X nhỏ hơn số mol của Y) với dung dịch NaOH vừa đủ, thu được dung dịch chỉ chứa 2 muối của alanin và valin có tổng khối lượng 101,04 gam. Phần trăm khối lượng của X có trong hỗn hợp E gần với giá trị nào nhất:', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (84, N'Cho 5,9 gam amin đơn chức X tác dụng vừa đủ với dung dịch HCl, sau khi phản ứng xảy ra hoàn
toàn thu được dung dịch Y. Làm bay hơi dung dịch Y được 9,55 gam muối khan. Số công thức cấu tạo
ứng với công thức phân tử của X là
', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (85, N'Cho 27,75 gam hỗn hợp A gồm Fe, Fe3O4 tác dụng với 300ml dung dịch HNO3 a (mol/lít). Sau
khi phản ứng xảy ra hoàn toàn thu được 3,36 lít khí NO duy nhất (đktc), dung dịch B và 2,19 gam kim
loại chưa tan. Giá trị của a là
', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (86, N'Cao su lưu hóa (loại cao su được tạo thành khi cho cao su thiên nhiên tác dụng với lưu huỳnh) có
khoảng 1,849% lưu huỳnh về khối lượng. Giả thiết rằng cầu nối –S–S– đã thay thế cho H ở cầu metylen
trong mạch cao su. Vậy khoảng bao nhiêu mắt xích isopren có một cầu đisunfua –S–S–?
', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (87, N'Cho 53,2 gam hỗn hợp X chứa chất A (C5H16O3N2) và chất B (C4H12O4N2) tác dụng với dung dịch NaOH vừa đủ, đun nóng cho đến khi phản ứng xảy ra hoàn toàn rồi cô cạn thu được m gam hỗn hợp Y gồm 2 muối và hỗn hợp Z gồm 2 amin no, đơn chức, đồng đẳng kế tiếp có tỉ khối so với H2 bằng 18,5. Phần trăm khối lượng của chất A trong hỗn hợp X là', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (88, N'Dung dịch X gồm 0,02 mol Cu(NO3)2 và x mol HCl. Khối lượng Fe tối đa phản ứng được với dung dịch X là 5,6 gam (biết NO là sản phẩm khử duy nhất NO3. Thể tích khí thu được sau phản ứng là', NULL, N'MH12003', 12, 3, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (89, N'Cho hỗn hợp Fe, Cu vào HNO3 đặc, đun nóng cho tới phản ứng hoàn toàn, thu được dung dịch
chỉ chứa một chất tan và còn lại m gam chất rắn không tan. Chất tan đó là
', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (90, N'Cho m gam Cu vào 100 ml dung dịch AgNO3 1M, sau một thời gian thì lọc được 10,08 gam hỗn
hợp 2 kim loại và dung dịch Y. Cho 2,4 gam Mg vào Y, phản ứng kết thúc thì lọc được 5,92 gam hỗn hợp
kim loại. Giá trị của m là
', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (91, N'Hỗn hợp X chứa hai este đều đơn chức, mạch hở. Để phản ứng với 0,14 mol X cần dùng vừa
đủ 160 ml dung dịch NaOH 1M, chưng cất dung dịch sau phản ứng thu được ancol metylic và 12,36
gam hỗn hợp Y gồm ba muối. Phần trăm khối lượng của este có khối lượng phân tử lớn trong hỗn
hợp X là
', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (92, N'Cho 19,2 gam hỗn hợp gồm hai amino axit no chứa một chức axit và một chức amin (tỉ lệ khối
lượng phân tử của chúng là 1,373) tác dụng với 110 ml dung dịch HCl 2M, được dung dịch X. Để tác
dụng hết với các chất trong dung dịch X cần dùng 140 ml dung dịch KOH 3M. Phần trăm số mol của mỗi
aminoaxit trong hỗn hợp ban đầu bằng:
', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (93, N'Đốt cháy hoàn toàn 1 mol chất béo thu được lượng CO2 vào H2O hơn kém nhau 6 mol. Mặt khác a mol chất béo trên tác dụng tối đa với 600ml dung dịch Br2 1M. Giá trị của a là', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (94, N'Đốt cháy hoàn toàn 10,8 gam hỗn hợp X gồm một axit cacboxylic no, đơn chức và một ancol
đơn chức, sau phản ứng thu được 0,4 mol CO2 và 0,6 mol H2O. Thực hiện phản ứng este hóa 5,4 gam X
với hiệu suất 60% thu được m gam este. Giá trị của m là
', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (95, N'Cho a gam hỗn hợp X gồm glyxin, alanin và valin phản ứng với 100 ml dung dịch HCl 1M thu
được dung dịch Y. Để phản ứng hết với các chất trong dung dịch Y cần 380 ml dung dịch KOH 0,5M.
Mặt khác đốt cháy hoàn toàn a gam hỗn hợp X rồi cho sản phẩm cháy vào bình đựng dung dịch Ba(OH)2
dư, sau phản ứng khối lượng dung dịch trong bình giảm 43,74 gam. Giá trị của a là
', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
INSERT [dbo].[Question] ([QuestionId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsDistributed], [NumberOfCorrectAnswers], [NumberOfWrongAnswers]) VALUES (96, N'Hỗn hợp E chứa các chất hữu cơ mạch hở gồm tetrapeptit X, pentapeptit Y và Z là este đơn chức
của α-amino axit. Đun nóng 36,86 gam hỗn hợp E với dung dịch NaOH vừa đủ, cô cạn dung dịch sau
phản ứng thu được phần hơi chứa ancol T có khối lượng 3,84 gam và phần rắn gồm 2 muối của glyxin và
alanin. Cho lượng ancol T trên vào bình đựng Na dư, sau phản ứng hoàn toàn thấy khối lượng bình tăng
3,72 gam. Mặt khác Đốt cháy hết hỗn hợp muối bằng O2 dư, thu được 5,6 lít N2 (đktc); 21,96 gam H2O và CO2, Na2CO3. Phần trăm khối lượng của X trong E là
', NULL, N'MH12003', 12, 4, 0, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (1, N'HS0000001', N'Tr?n b?t kim lo?i X v?i b?t s?t oxit (g?i là h?n h?p tecmit) d? th?c hi?n ph?n ?ng nhi?t nhôm
dùng d? hàn du?ng ray tàu h?a. Kim lo?i X là:', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (2, N'HS0000001', N'Ô nhi?m không khí có th? t?o ra mua axit, gây ra tác h?i r?t l?n v?i môi tru?ng. Hai khí nào sau
dây là nguyên nhân gây ra mua axit?', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (3, N'HS0000001', N' Kim lo?i mà khi tác d?ng v?i HCl ho?c Cl2 không cho ra cùng m?t mu?i là: ', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (4, N'HS0000001', N'Ch?t không có kh? nang làm xanh qu? tím là: ', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (5, N'HS0000001', N'Cho Fe tác d?ng v?i HNO3 d?c nóng thu du?c khí X có màu nâu d?. Khí X là: ', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (6, N'HS0000001', N' Kim lo?i có nhi?t d? nóng ch?y cao nh?t có ký hi?u hóa h?c là: ', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (7, N'HS0000001', N'Ch?t không b? nhi?t phân h?y là', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (8, N'HS0000001', N'H?p ch?t H2NCH2COOH có tên g?i là', NULL, N'MH12003', 12, 1, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (9, N'HS0000001', N' Cho các ch?t: anlyl axetat, phenyl axetat, etyl fomat, tripanmitin. S? ch?t trong các ch?t khí trên
khi th?y phân trong dung d?ch NaOH du, dun nóng sinh ra ancol là', NULL, N'MH12003', 12, 2, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (10, N'HS0000001', N'M?t s? h?p ch?t h?u co m?ch h?, thành ph?n ch?a C, H, O và có kh?i lu?ng phân t? 60
dvC. Trong các ch?t trên, s? ch?t tác d?ng du?c v?i Na là:', NULL, N'MH12003', 12, 2, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (11, N'HS0000001', N' Cho t? t? 200 ml dung d?ch h?n h?p HCl 1M và H2SO4 0,5M vào 300 ml dung d?ch Na2CO3
1M thu du?c V lít khí (? dktc). Giá tr? c?a V là:', NULL, N'MH12003', 12, 2, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (12, N'HS0000001', N' Hòa tan hoàn toàn 3,2 gam m?t oxit kim lo?i c?n v?a d? 40 ml dung d?ch HCl 2M. Công th?c c?a
oxit dó là: ', NULL, N'MH12003', 12, 2, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (13, N'HS0000001', N'  Cho dãy các ch?t: metan, etin, eten, etanol, etanoic, propenoic, benzen, alanin, phenol,
triolein. S? ch?t trong dãy làm m?t màu dung d?ch brom là: ', NULL, N'MH12003', 12, 3, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (14, N'HS0000001', N' Khi cho các ch?t Al, FeS, dung d?ch HCl, dung d?ch NaOH và dung d?ch (NH4)2CO3 ph?n ?ng
v?i nhau t?ng dôi m?t thì s? ch?t khí có th? thu du?c là:', NULL, N'MH12003', 12, 3, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (15, N'HS0000001', N'  Ð?t cháy hoàn toàn h?n h?p X g?m các ch?t có công th?c phân t? CH2O, CH2O2, C2H2O2
d?u có c?u t?o m?ch h? và có s? mol b?ng nhau thu du?c CO2, H2O. H?p th? h?t s?n ph?m cháy b?ng nu?c
vôi trong du, sau ph?n ?ng th?y kh?i lu?ng dung d?ch gi?m 17,0 gam so v?i kh?i lu?ng nu?c vôi trong ban
d?u. Cho lu?ng h?n h?p X nhu trên tác d?ng v?i lu?ng du dung d?ch AgNO3 trong NH3 thì thu du?c t?i da
m gam Ag. Giá tr? c?a m là:', NULL, N'MH12003', 12, 4, 0)
GO
INSERT [dbo].[QuestionDistribute] ([QuestionDistributeId], [StudentId], [Content], [Hint], [SubjectId], [GradeId], [DifficultLevel], [IsApproved]) VALUES (16, N'HS0000001', N'Cho 11,2 lít h?n h?p X g?m axetilen và andehit axetic (? dktc) qua dung d?ch AgNO3/NH3 du.
Sau khi ph?n ?ng hoàn toàn thu du?c 112,8 gam k?t t?a. D?n lu?ng h?n h?p X nhu trên qua dung d?ch
nu?c brom du, kh?i lu?ng brom tham gia ph?n ?ng là (gi? s? lu?ng axetilen ph?n ?ng v?i nu?c là không
dáng k?)', NULL, N'MH12003', 12, 4, 0)
GO
INSERT [dbo].[RoleType] ([RoleTypeId], [RoleName]) VALUES (0, N'Admin')
GO
INSERT [dbo].[RoleType] ([RoleTypeId], [RoleName]) VALUES (1, N'Học sinh')
GO
INSERT [dbo].[RoleType] ([RoleTypeId], [RoleName]) VALUES (2, N'Giáo Viên')
GO
INSERT [dbo].[Student] ([StudentId], [Username], [ClassroomId]) VALUES (N'HS0000001', N'vctuong', N'12HOA')
GO
INSERT [dbo].[Student] ([StudentId], [Username], [ClassroomId]) VALUES (N'HS0000002', N'tlthang', N'11SINH')
GO
INSERT [dbo].[Student] ([StudentId], [Username], [ClassroomId]) VALUES (N'HS0000003', N'ldlinh', N'11ANH')
GO
INSERT [dbo].[Student] ([StudentId], [Username], [ClassroomId]) VALUES (N'HS0000004', N'xiu90', N'10HOA')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH10001', 10, N'Toán 10')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH10002', 10, N'Lý 10')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH10003', 10, N'Hoá 10')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH10004', 10, N'Anh 10')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH10005', 10, N'Sinh 10')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH10006', 10, N'Văn 10')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH11001', 11, N'Toán 11')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH11002', 11, N'Lý 11')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH11003', 11, N'Hoá 11')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH11004', 11, N'Anh 11')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH11005', 11, N'Sinh 11')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH11006', 11, N'Văn 11')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH12001', 12, N'Toán 12')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH12002', 12, N'Lý 12')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH12003', 12, N'Hoá 12')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH12004', 12, N'Anh 12')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH12005', 12, N'Sinh 12')
GO
INSERT [dbo].[Subject] ([SubjectId], [GradeId], [SubjectName]) VALUES (N'MH12006', 12, N'Văn 12')
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000001', N'11LY', N'MH11002', 11)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000001', N'11TOAN', N'MH11001', 11)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000001', N'12LY', N'MH12002', 12)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000001', N'12TOAN', N'MH12001', 12)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000002', N'10ANH', N'MH10004', 10)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000002', N'11ANH', N'MH11004', 11)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000002', N'12ANH', N'MH12004', 12)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000003', N'11SINH', N'MH11005', 11)
GO
INSERT [dbo].[Teach] ([TeacherId], [ClassroomId], [SubjectId], [GradeId]) VALUES (N'GV0000003', N'12SINH', N'MH12005', 12)
GO
INSERT [dbo].[Teacher] ([TeacherId], [Username]) VALUES (N'GV0000003', N'hxvinh')
GO
INSERT [dbo].[Teacher] ([TeacherId], [Username]) VALUES (N'GV0000001', N'lbngoc')
GO
INSERT [dbo].[Teacher] ([TeacherId], [Username]) VALUES (N'GV0000002', N'vhntrung')
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'admin', N'9E69962D347D6301569036F88385AF00ECC6CD36383330', N'ADMIN', N'ADMIN', CAST(N'2019-08-28 00:00:00.000' AS DateTime), N'0123456789', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 1, CAST(N'2019-12-12 00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'hxvinh', N'0274FF43A7307FB9E800364CE78C2B0A57CE92D2323630', N'Hoàng Xuân', N'Vinh', CAST(N'1980-11-11 00:00:00.000' AS DateTime), N'0336699123', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 1, CAST(N'2019-12-12 00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'lbngoc', N'492D98EB9567970F2C6533992FD6DD422EC71CC7333730', N'Lê', N'Bá Ngọc', CAST(N'1990-10-20 00:00:00.000' AS DateTime), N'0987654321', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 1, CAST(N'2019-12-12 00:00:00.000' AS DateTime), 2)
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'ldlinh', N'5D0E50B9A6B201FFFDE2E1FD0734EB971B9FEEE6333237', N'Lê Đang', N'Linh', CAST(N'2000-05-28 00:00:00.000' AS DateTime), N'0913952351', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 1, CAST(N'2019-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'tlthang', N'D3FBFC98E78ECFF458E186623565C62EC54F88D2323633', N'Trần Lý ', N'Thuý Hằng', CAST(N'1999-12-16 00:00:00.000' AS DateTime), N'0331231234', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 0, NULL, 1)
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'vctuong', N'A18E994CA0A2119B3B9D7F047153297DAF419A26353231', N'Vương', N'Cát Tường', CAST(N'1999-08-28 00:00:00.000' AS DateTime), N'0979000123', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 1, CAST(N'2019-12-12 00:00:00.000' AS DateTime), 1)
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'vhntrung', N'DFACA6C064E49DEE1E4883066A89E08384C9FFC9333738', N'Võ Hoài', N'Nhân Trung', CAST(N'1980-01-18 00:00:00.000' AS DateTime), N'0987878712', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 0, NULL, 2)
GO
INSERT [dbo].[User] ([Username], [Password], [FirstName], [LastName], [Dob], [Phone], [CreatedDate], [Status], [LastLoginDate], [RoleTypeId]) VALUES (N'xiu90', N'95A26C69BCB446934EE07F98B82922B6D809C2F6373431', N'Nguyễn Hoàng', N'Kiều Trinh', CAST(N'2001-01-01 00:00:00.000' AS DateTime), N'0583688631', CAST(N'2019-12-01 00:00:00.000' AS DateTime), 0, NULL, 1)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [u_Students_Username]    Script Date: 05/01/2020 10:13:45 PM ******/
ALTER TABLE [dbo].[Student] ADD  CONSTRAINT [u_Students_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [u_Teachers_Username]    Script Date: 05/01/2020 10:13:45 PM ******/
ALTER TABLE [dbo].[Teacher] ADD  CONSTRAINT [u_Teachers_Username] UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [fk_Answer_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [fk_Answer_Question]
GO
ALTER TABLE [dbo].[AnswerDistribute]  WITH CHECK ADD  CONSTRAINT [fk_AnswerDistribute_QuestionDistribute] FOREIGN KEY([QuestionDistributeId])
REFERENCES [dbo].[QuestionDistribute] ([QuestionDistributeId])
GO
ALTER TABLE [dbo].[AnswerDistribute] CHECK CONSTRAINT [fk_AnswerDistribute_QuestionDistribute]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [fk_Classes_Grades] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [fk_Classes_Grades]
GO
ALTER TABLE [dbo].[ExamCode]  WITH CHECK ADD  CONSTRAINT [fk_ExamCode_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[ExamCode] CHECK CONSTRAINT [fk_ExamCode_Subject]
GO
ALTER TABLE [dbo].[ExamCode_Question]  WITH CHECK ADD  CONSTRAINT [fk_ExamCodeQuestion_ExamCode] FOREIGN KEY([ExamCodeId])
REFERENCES [dbo].[ExamCode] ([ExamCodeId])
GO
ALTER TABLE [dbo].[ExamCode_Question] CHECK CONSTRAINT [fk_ExamCodeQuestion_ExamCode]
GO
ALTER TABLE [dbo].[ExamCode_Question]  WITH CHECK ADD  CONSTRAINT [fk_ExamCodeQuestion_Question] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionId])
GO
ALTER TABLE [dbo].[ExamCode_Question] CHECK CONSTRAINT [fk_ExamCodeQuestion_Question]
GO
ALTER TABLE [dbo].[ExamDetail]  WITH CHECK ADD  CONSTRAINT [fk_ExamDetail_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[ExamDetail] CHECK CONSTRAINT [fk_ExamDetail_Subject]
GO
ALTER TABLE [dbo].[ExamDetail]  WITH CHECK ADD  CONSTRAINT [fk_ExamDetails_Exams] FOREIGN KEY([ExamId])
REFERENCES [dbo].[Exam] ([ExamId])
GO
ALTER TABLE [dbo].[ExamDetail] CHECK CONSTRAINT [fk_ExamDetails_Exams]
GO
ALTER TABLE [dbo].[ExamResult]  WITH CHECK ADD  CONSTRAINT [FK_ExamResult_ExamTake] FOREIGN KEY([ExamDetailId], [StudentId])
REFERENCES [dbo].[ExamTake] ([ExamDetailId], [StudentId])
GO
ALTER TABLE [dbo].[ExamResult] CHECK CONSTRAINT [FK_ExamResult_ExamTake]
GO
ALTER TABLE [dbo].[ExamTake]  WITH CHECK ADD  CONSTRAINT [FK_ExamTake_ExamDetail] FOREIGN KEY([ExamDetailId])
REFERENCES [dbo].[ExamDetail] ([ExamDetailId])
GO
ALTER TABLE [dbo].[ExamTake] CHECK CONSTRAINT [FK_ExamTake_ExamDetail]
GO
ALTER TABLE [dbo].[ExamTake]  WITH CHECK ADD  CONSTRAINT [FK_ExamTake_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[ExamTake] CHECK CONSTRAINT [FK_ExamTake_Student]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [fk_Question_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [fk_Question_Subject]
GO
ALTER TABLE [dbo].[QuestionDistribute]  WITH CHECK ADD  CONSTRAINT [fk_QuestionDistribute_Student] FOREIGN KEY([StudentId])
REFERENCES [dbo].[Student] ([StudentId])
GO
ALTER TABLE [dbo].[QuestionDistribute] CHECK CONSTRAINT [fk_QuestionDistribute_Student]
GO
ALTER TABLE [dbo].[QuestionDistribute]  WITH CHECK ADD  CONSTRAINT [fk_QuestionDistribute_Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[QuestionDistribute] CHECK CONSTRAINT [fk_QuestionDistribute_Subject]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_Students_Classrooms] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([ClassroomId])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_Students_Classrooms]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [fk_Students_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [fk_Students_Users]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [fk_Subject_Grade] FOREIGN KEY([GradeId])
REFERENCES [dbo].[Grade] ([GradeId])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [fk_Subject_Grade]
GO
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [fk_Teach_Classroom] FOREIGN KEY([ClassroomId])
REFERENCES [dbo].[Classroom] ([ClassroomId])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [fk_Teach_Classroom]
GO
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [fk_Teach_Subject-Subject] FOREIGN KEY([SubjectId], [GradeId])
REFERENCES [dbo].[Subject] ([SubjectId], [GradeId])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [fk_Teach_Subject-Subject]
GO
ALTER TABLE [dbo].[Teach]  WITH CHECK ADD  CONSTRAINT [fk_Teach_Teacher] FOREIGN KEY([TeacherId])
REFERENCES [dbo].[Teacher] ([TeacherId])
GO
ALTER TABLE [dbo].[Teach] CHECK CONSTRAINT [fk_Teach_Teacher]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [fk_Teachers_Users] FOREIGN KEY([Username])
REFERENCES [dbo].[User] ([Username])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [fk_Teachers_Users]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [fk_User_RoleType] FOREIGN KEY([RoleTypeId])
REFERENCES [dbo].[RoleType] ([RoleTypeId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [fk_User_RoleType]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phân biệt đề thi thử' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamCode', @level2type=N'COLUMN',@level2name=N'IsPracticeExam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'minute' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ExamDetail', @level2type=N'COLUMN',@level2name=N'Duration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Độ khó' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Question', @level2type=N'COLUMN',@level2name=N'DifficultLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kiểm tra tình trạng được duyệt' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'QuestionDistribute', @level2type=N'COLUMN',@level2name=N'IsApproved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 = admin, 1 = student, 2 = teacher' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RoleTypeId'
GO
