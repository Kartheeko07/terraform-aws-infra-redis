Feature: Test tagging compliance

Scenario: Ensure all resources have tags
    Given I have resource that supports tags defined
    Then it must contain tags
    And its value must not be null

Scenario Outline: Ensure that specific tags are defined for Elasticache
    Given I have aws_elasticache_replication_group defined
    When it has tags
    Then it must contain <tags>
    And its value must match the "<value>" regex

    Examples:
      | tags            | value                                                  |
      | Service         | .+                                                     |
      | Name            | .+                                                     |
      | Owner           | ^(data services\|platform api\|infrastructure\|web)$   |
      | Classification  | ^(internal\|confidential\|public)$                     |  
