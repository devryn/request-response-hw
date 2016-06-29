require_relative '../lib/all'

def parse_params(uri_fragments, query_param_string)
  params = {}
  params[:resource]  = uri_fragments[3]
  params[:id]        = uri_fragments[4]
  params[:action]    = uri_fragments[5]
  if query_param_string
    param_pairs = query_param_string.split('&')
    param_k_v   = param_pairs.map { |param_pair| param_pair.split('=') }
    param_k_v.each do |k, v|
      params.store(k.to_sym, v)
    end
  end
  params
end

# You shouldn't need to touch anything in these methods.
def parse(raw_request)
  pieces = raw_request.split(' ')
  method = pieces[0]
  uri    = pieces[1]
  http_v = pieces[2]
  route, query_param_string = uri.split('?')
  uri_fragments = route.split('/')
  protocol = uri_fragments[0][0..-2]
  full_url = uri_fragments[2]
  subdomain, domain_name, tld = full_url.split('.')
  params = parse_params(uri_fragments, query_param_string)
  return {
    method: method,
    uri: uri,
    http_version: http_v,
    protocol: protocol,
    subdomain: subdomain,
    domain_name: domain_name,
    tld: tld,
    full_url: full_url,
    params: params
  }
end

system('clear')
loop do
  print "Supply a valid HTTP Request URL (h for help, q to quit) > "
  raw_request = gets.chomp

  case raw_request
  when 'q' then puts "Goodbye!"; exit
  when 'h'
    puts "A valid HTTP Request looks like:"
    puts "\t'GET http://localhost:3000/students HTTP/1.1'"
    puts "Read more at : http://www.w3.org/Protocols/rfc2616/rfc2616-sec5.html"
  else
    @request = parse(raw_request)
    @params  = @request[:params]
    # Use the @request and @params ivars to fill the request and
    # return an appropriate response
class Users
  attr_reader :first_name, :last_name, :age

  def initialize
    @first_name = first_name
    @last_name = last_name
    @age = age
    @users = users
  end
end

  users = [
    {:first_name => "John",
    :last_name => "Lennon",
    :age => 40},
    {:first_name => "Paul",
    :last_name => "McCartney",
    :age => 74},
    {:first_name => "George",
    :last_name => "Harrison",
    :age => 58},
    {:first_name => "Ringo",
    :last_name => "Starr",
    :age => 75}
    ]

    puts @request.inspect
    puts @params[:id]

    if @params[:id]
      user = users.fetch(@params[:id].to_i - 1) { puts "NOT_FOUND" }
      puts
      puts "#{user.fetch(:first_name)} #{user.fetch(:last_name)} #{user.fetch(:age)}"
      puts
    elsif @request[:params][:resource] == "users"
      users.each.with_index do |user, index|
        puts "#{index + 1} - #{user.fetch(:first_name)} #{user.fetch(:last_name)} #{user.fetch(:age)}"
        puts
      end
    elsif @request[:method] == "DELETE"
      users.reject { |h| delete.include? h[@request] }
      puts "#{user.fetch(:first_name)} #{user.fetch(:last_name)} #{user.fetch(:age)} has been successfully deleted."
    end
  end
end
