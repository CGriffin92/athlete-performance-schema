CREATE DATABASE ACTIVATED;
USE ACTIVATED;

-- Athlete Onboarding Info
CREATE TABLE athlete_onboarding (
  onboarding_id INT AUTO_INCREMENT PRIMARY KEY,
  submitted_at DATETIME DEFAULT CURRENT_TIMESTAMP,

  full_legal_name VARCHAR(150),
  preferred_name VARCHAR(100),
  date_of_birth DATE,
  gender VARCHAR(20),
  school_program_name VARCHAR(150),
  graduation_year YEAR,
  height_feet TINYINT,
  height_inches TINYINT,
  weight_lbs DECIMAL(5,2),

  athlete_email VARCHAR(100),
  parent_guardian_names TEXT,
  parent_guardian_email VARCHAR(100),
  parent_phone_number VARCHAR(20),
  athlete_phone_number VARCHAR(20),

  teambuildr_url TEXT,
  output_url TEXT,
  vald_url TEXT,
  myfitnesspal_url TEXT,
  youtube_url TEXT,
  linkedin_url TEXT,

  participation_consent BOOLEAN,
  data_collection_consent BOOLEAN
);
-- Mobility Tables
CREATE TABLE mobility_cervical (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    extension INT,
    flexion INT,
    lateral_flexion_l INT,
    lateral_flexion_r INT,	
    rotation_l INT,
    rotation_r INT,
    FOREIGN KEY (user_id) REFERENCES athlete_onboarding(onboarding_id)
);
