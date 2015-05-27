class Venue < ActiveRecord::Base
  has_many :tabs

  def self.generate_report(start_date, end_date)

    venues = Venue.joins(:tabs).where('tabs.created_at > ? AND tabs.created_at <= ?', start_date, end_date)

    venues.each do |venue|
      name = venue.name
      transactions = UserTab.where('tab_id IN(?)', venue.tab_ids).joins(:payments).count
      value = UserTab.where('tab_id IN(?)', venue.tab_ids).joins(:payments).sum('payments.amount')

      VenueRow.create(venue_name: name, transactions: transactions, value: value, report: report)
    end
  end
end





