// 付箋の集合を表すインスタンス
var instance = new FusenNodeTreeView("contents");

function GenerateTestData2D() {
    instance.update(new NodeInfo("id_001", null, "MindMap的な何か", "lightgray"));
    instance.update(new NodeInfo("id_001_1", "id_001", "木構造をしている", "white"));
    instance.update(new NodeInfo("id_001_2", "id_001", "内部にテキストを持つ", "gray"));
    instance.update(new NodeInfo("id_001_3", "id_001", "各ノードについて", "lightgreen"));
    instance.update(new NodeInfo("id_001_3_1", "id_001_3", "多人数で同時に編集できたらうれしい", "green"));
    instance.update(new NodeInfo("id_001_3_2", "XXXXXXX", "test_id_003_1")); // 存在しないIDを親にしてみる
    instance.update(new NodeInfo("id_001_4", "id_001", "test_id_001_4"));

    instance.update(new NodeInfo("id_002", null, "test_id_002"));
    instance.update(new NodeInfo("id_002_1", "id_002", "test_id_002_1"));
    instance.update(new NodeInfo("id_002_1_1", "id_002_1", "test_id_002_1_1"));

    instance.update(new NodeInfo("XXXXXXX", "id_003_1", "test_id_003")); // 存在しなかったIDを追加してみる
}

// 初期化イベント
window.onload = function () {
    // root を作る場合このコードを生かす。
    document.body.appendChild(instance.createRoot());

    //GenerateTestData2D();
};
//# sourceMappingURL=app2d.js.map
