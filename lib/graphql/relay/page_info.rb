# frozen_string_literal: true
module GraphQL
  module Relay
    # Wrap a Connection and expose its page info
    PageInfo = GraphQL::ObjectType.define do
      name("PageInfo")
      description("Information about pagination in a connection.")
      field :totalCount, !types.Int, "total count item", property: :total_count
      field :totalPages, !types.Int, "total pages item", property: :total_pages
      field :hasNextPage, !types.Boolean, "When paginating forwards, are there more items?", property: :has_next_page
      field :hasPreviousPage, !types.Boolean, "When paginating backwards, are there more items?", property: :has_previous_page
      field :startCursor, types.String, "When paginating backwards, the cursor to continue.", property: :start_cursor
      field :endCursor, types.String, "When paginating forwards, the cursor to continue.", property: :end_cursor
      default_relay true
    end
  end
end
