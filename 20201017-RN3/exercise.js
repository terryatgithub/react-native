import React from "react";
import {
  Text,
  TouchableOpacity,
  Dimensions,
  View,
  StyleSheet,
  Switch,
} from "react-native";

const { width, height } = Dimensions.get("window");
const cellWidth = width * 0.3;

// @暗号： 明确状态归属，合理切分组件
export default function App() {
  const [isSingle, setIsSingle] = React.useState(false);
  const [selectedIndex, setSelectedIndex] = React.useState(-1);
  return (
    <View style={styles.container}>
      <View style={styles.innerContainer}>
        <Text>单选</Text>
        <Switch
          style={{ marginLeft: 10 }}
          value={isSingle}
          onValueChange={setIsSingle}
        ></Switch>
      </View>
      <View style={styles.innerContainer}>
        {isSingle
          ? [...new Array(9)].map((_, i) => {
              return (
                <TouchableOpacity
                  key={i}
                  onPress={() => setSelectedIndex(i)}
                  style={[
                    styles.cell,
                    selectedIndex === i && { backgroundColor: "red" },
                  ]}
                />
              );
            })
          : [...new Array(9)].map((_, i) => {
              return <Cell key={i} />;
            })}
      </View>
    </View>
  );
}

function Cell() {
  const [selected, setSelected] = React.useState(false);
  return (
    <TouchableOpacity
      onPress={() => {
        setSelected(!selected);
      }}
      style={[styles.cell, selected && { backgroundColor: "red" }]}
    />
  );
}

const styles = StyleSheet.create({
  container: {},
  innerContainer: {
    marginTop: 100,
    justifyContent: "center",
    flexDirection: "row",
    flexWrap: "wrap",
  },
  cell: {
    width: cellWidth,
    height: cellWidth,
    borderWidth: 1,
    borderColor: "blue",
  },
});
