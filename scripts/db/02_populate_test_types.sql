USE rowdb;

-- Insert a suset of base tests
INSERT IGNORE INTO TestTypes (testName, testDescription, forTime) VALUES
('10k', '10k @ open rate for time.', TRUE),
('6k', '6k @ open rate for time.', TRUE),
('2500m', '2500m @ open rate for time. Not GENETIC.', TRUE),
('Genetic (2500m)', 'First ever freshman 2500m @ open rate for time.', TRUE),
('HOP', 'Hour of Power @ open rate for distance.', FALSE);