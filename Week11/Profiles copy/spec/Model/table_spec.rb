require 'rails_helper'

describe "MODELS -- Testing all appropriate tables exist" do

  context 'requesting table names' do
    it 'should have all required tables' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedtablenames = ["ar_internal_metadata", "schema_migrations", "tokenurls", "sections", "projects", "profiles_sections", "profiles_projects", "profiles", "employments_profiles", "employments", "educations_profiles", "educations", "customs_profiles", "customs", "certifications_profiles", "certifications"]
      tablenames = []
      conn.exec( "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE table_schema='public';" ) do |result|
        result.each do |row|
          tablenames << row["table_name"]
        end
      end
      expectedtablenames = expectedtablenames.sort
      tablenames = tablenames.sort
      expect(tablenames).to eq expectedtablenames
    end
  end

  # PROFILES
  context 'requesting profiles tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "summary", "degree", "user_id", "stream", "name", "status", "approved_by", "email", "created_at", "updated_at"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'profiles';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id","bigint"],["summary","text"], ["degree","character varying"],
          ["created_at","timestamp without time zone"], ["updated_at","timestamp without time zone"],
          ["user_id","character varying"], ["stream","character varying"], ["name","character varying"],
          ["status","character varying"], ["approved_by","character varying"], ["email","character varying"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'profiles';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end

  # PROJECTS
  context 'requesting projects tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "title", "description", "user_id", "created_at", "updated_at"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'projects';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id", "bigint"], ["title", "character varying"], ["description", "text"],
          ["user_id", "character varying"], ["created_at","timestamp without time zone"],
          ["updated_at","timestamp without time zone"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'projects';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end

  # CERTIFICATIONS
  context 'requesting  certifications tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "title", "description", "user_id", "created_at", "updated_at"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'certifications';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id", "bigint"], ["title", "character varying"], ["description", "text"],
          ["user_id", "character varying"], ["created_at","timestamp without time zone"],
          ["updated_at","timestamp without time zone"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'certifications';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end

  # CUSTOMS
  context 'requesting customs tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "title", "body", "user_id", "created_at", "updated_at", "heading"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'customs';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id", "bigint"], ["title", "character varying"], ["body", "text"],
          ["user_id", "character varying"], ["created_at","timestamp without time zone"],
          ["updated_at","timestamp without time zone"], ["heading", "character varying"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'customs';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end

  # EDUCATIONS
  context 'requesting educations tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "start_date", "end_date", "institution", "course", "description", "created_at", "updated_at", "user_id"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'educations';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id", "bigint"], ["start_date", "date"], ["end_date", "date"],
          ["institution", "character varying"], ["course", "character varying"], ["description", "text"],
          ["created_at", "timestamp without time zone"], ["updated_at", "timestamp without time zone"], ["user_id", "character varying"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'educations';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end

  # EMPLOYMENTS
  context 'requesting employments tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "start_date", "end_date", "company", "role", "description", "created_at", "updated_at", "user_id"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'employments';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id", "bigint"], ["start_date", "date"], ["end_date", "date"], ["company", "character varying"],
          ["role", "character varying"], ["description", "text"], ["created_at", "timestamp without time zone"], ["updated_at", "timestamp without time zone"],
          ["user_id", "character varying"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'employments';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end

  # SECTIONS
  context 'requesting sections tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "title", "description", "skills", "created_at", "updated_at", "position"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'sections';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id", "bigint"], ["title", "character varying"], ["description", "text"],
          ["skills", "text"], ["created_at", "timestamp without time zone"], ["updated_at", "timestamp without time zone"],
          ["position", "integer"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'sections';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end

  # TOKENURLS
  context 'requesting tokenurls tables' do
    it 'should have all required columns' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnames = ["id", "token", "created_at", "updated_at", "profile_id"]
      columnnames = []
      conn.exec( "SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'tokenurls';" ) do |result|
        result.each do |row|
          columnnames << row["column_name"]
        end
      end
      expectedcolumnnames = expectedcolumnnames.sort
      columnnames = columnnames.sort
      expect(columnnames).to eq expectedcolumnnames
    end
    it 'columns should contain values of correct type' do
      conn = PG.connect( dbname: 'SpartaProfiles_development' )
      expectedcolumnnamestypes = [["id", "bigint"], ["token", "character varying"], ["created_at", "timestamp without time zone"],
          ["updated_at", "timestamp without time zone"], ["profile_id", "integer"]]
      columnnamestypes = []
      conn.exec( "SELECT column_name, data_type FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'tokenurls';" ) do |result|
        result.each do |row|
          name_type = []
          name_type << row["column_name"]
          name_type << row["data_type"]
          columnnamestypes << name_type
        end
      end
      expectedcolumnnamestypes = expectedcolumnnamestypes.sort
      columnnamestypes = columnnamestypes.sort
      expect(columnnamestypes).to eq expectedcolumnnamestypes
    end
  end
end
