# frozen_string_literal: true
module GraphQL
  module StaticValidation
    # Default rules for {GraphQL::StaticValidation::Validator}
    #
    # Order is important here. Some validators return {GraphQL::Language::Visitor::SKIP}
    # which stops the visit on that node. That way it doesn't try to find fields on types that
    # don't exist, etc.
    ALL_RULES = [
      GraphQL::StaticValidation::NoDefinitionsArePresent,
      GraphQL::StaticValidation::DirectivesAreDefined,
      GraphQL::StaticValidation::DirectivesAreInValidLocations,
      GraphQL::StaticValidation::UniqueDirectivesPerLocation,
      GraphQL::StaticValidation::FragmentsAreFinite,
      GraphQL::StaticValidation::FragmentsAreNamed,
      GraphQL::StaticValidation::FragmentNamesAreUnique,
      GraphQL::StaticValidation::FragmentsAreUsed,
      GraphQL::StaticValidation::FragmentTypesExist,
      GraphQL::StaticValidation::FragmentsAreOnCompositeTypes,
      GraphQL::StaticValidation::FragmentSpreadsArePossible,
      GraphQL::StaticValidation::FieldsAreDefinedOnType,
      GraphQL::StaticValidation::FieldsWillMerge,
      GraphQL::StaticValidation::FieldsHaveAppropriateSelections,
      GraphQL::StaticValidation::ArgumentsAreDefined,
      GraphQL::StaticValidation::ArgumentLiteralsAreCompatible,
      GraphQL::StaticValidation::RequiredArgumentsArePresent,
      GraphQL::StaticValidation::VariablesAreInputTypes,
      GraphQL::StaticValidation::VariableDefaultValuesAreCorrectlyTyped,
      GraphQL::StaticValidation::VariablesAreUsedAndDefined,
      GraphQL::StaticValidation::VariableUsagesAreAllowed,
      GraphQL::StaticValidation::MutationRootExists,
      GraphQL::StaticValidation::SubscriptionRootExists,
      GraphQL::StaticValidation::OperationNamesAreValid,
    ]
  end
end
