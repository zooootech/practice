class Car
  # initializeはインスタンスが生成された瞬間に、生成されたそのインスタンスが実行する処理を定義するインスタンスメソッド
  # Rubyのクラスから生成されるすべてのインスタンスにはこのinitializeメソッドが用意されている
  # クラスに何も記述しなくてもinitializeメソッドは自動で実行されている
  # その場合のinitializeメソッドは基本的に何も処理は行わない
  # もしインスタンス生成時に何か処理を行いたい場合は、新たにinitializeメソッドを定義して処理を記述する必要がある
  def initialize(car_name, car_model, capacity)
    @name = car_name
    @model = car_model
    @capacity = capacity
  end

  def self.run
    puts '走行します'
  end

  def ride_car(ride_number)
    if ride_number > @capacity
      puts "#{@name}は、乗車定員が#{@capacity}人なので、#{ride_number}人は乗れません。"
    else
      puts "#{ride_number}人乗車できました。"
    end
  end
end

# car_name、car_model、capacityの３つを、fire_truckのインスタンスを生成する際に引数として渡す
fire_truck = Car.new('消防車', '大型車', 5)
fire_truck.ride_car(3)

Car.run