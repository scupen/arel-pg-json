require 'arel/predications'

module Arel
  module Predications

    def json_dash_arrow(other)
      Nodes::JsonDashArrow.new self, Nodes.build_quoted(other, self)
    end

    def json_dash_double_arrow(other)
      Nodes::JsonDashDoubleArrow.new self, Nodes.build_quoted(other, self)
    end

    def json_hash_arrow(other)
      Nodes::JsonHashArrow.new self, Nodes.build_quoted(other, self)
    end

    def json_hash_double_arrow(other)
      Nodes::JsonHashDoubleArrow.new self, Nodes.build_quoted(other, self)
    end

    def jsonb_at_arrow(other)
      Nodes::JsonbAtArrow.new self, Nodes.build_quoted(other, self)
    end

    def jsonb_arrow_at(other)
      Nodes::JsonbArrowAt.new self, Nodes.build_quoted(other, self)
    end

    def jsonb_question(other)
      Nodes::JsonbQuestion.new self, Nodes.build_quoted(other, self)
    end

    def jsonb_question_and(other)
      Nodes::JsonbQuestionAnd.new self, Nodes.build_quoted(other, self)
    end

    def jsonb_question_or(other)
      Nodes::JsonbQuestionOr.new self, Nodes.build_quoted(other, self)
    end

    def cast_json(other)
      Nodes::CastJson.new self, Nodes.build_quoted(other, self)
    end

  end
end
