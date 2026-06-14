import pandas as pd
import matplotlib.pyplot as plt

data = {
    'Food_Type': ['Rice', 'Vegetables', 'Fruits', 'Bread'],
    'Waste_Quantity': [50, 30, 20, 10]
}

df = pd.DataFrame(data)

plt.bar(df['Food_Type'], df['Waste_Quantity'])
plt.title('Food Waste Analysis')
plt.xlabel('Food Type')
plt.ylabel('Waste Quantity')
plt.show()