# EtlProcessor

Extract, transform and load process with ruby.

[![Build Status](https://travis-ci.org/armando1339/etl_processor.svg?branch=master)](https://travis-ci.org/armando1339/etl_processor) [![Coverage Status](https://coveralls.io/repos/github/armando1339/etl_processor/badge.svg?branch=master)](https://coveralls.io/github/armando1339/etl_processor?branch=master)

## Usage

Use the `.:model` key to send the model in which you want to insert the information.
The insertion of data depends on whether the fields exist in the model

```ruby
class UnitsController < ApplicationController

  def import
    service_result = EtlProcessor::Csv.call(model: Unit)

    if service_result.success?
      redirect_to units_url, notice: 'ETL process by CSV was successfully.'
    else
      redirect_to units_url, error: 'Something was wrong.'
    end
  end

  ...
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'etl_processor'
```

And then execute:
```bash
$ bundle install
```

## Contributing

Bug report or pull request are welcome.

Make a pull request:

- Clone the repo
- Create your feature branch
- Commit your changes
- Push the branch
- Create new Pull-Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
