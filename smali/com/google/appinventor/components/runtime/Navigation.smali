.class public Lcom/google/appinventor/components/runtime/Navigation;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Navigation"
    iconName = "images/navigation.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field public static final OPEN_ROUTE_SERVICE_URL:Ljava/lang/String; = "https://api.openrouteservice.org/v2/directions/"


# instance fields
.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/TransportMethod;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

.field private tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

.field private vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 79
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "https://api.openrouteservice.org/v2/directions/"

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    const-string p1, "en"

    .line 70
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    .line 71
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->makeDictionary()Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string p1, ""

    .line 80
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    .line 81
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    .line 82
    new-instance p1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {p1, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    .line 83
    sget-object p1, Lcom/google/appinventor/components/common/TransportMethod;->Foot:Lcom/google/appinventor/components/common/TransportMethod;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/TransportMethod;

    return-void
.end method

.method private static getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    .line 404
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Navigation"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 407
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const/16 p0, 0x400

    new-array p0, p0, [C

    .line 413
    :goto_1
    invoke-virtual {v1, p0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v3

    if-eq v3, v0, :cond_2

    const/4 v4, 0x0

    .line 414
    invoke-virtual {v2, p0, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 419
    throw p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v10, p0

    const-string v0, "properties"

    const-string v11, "RequestDirections"

    .line 1337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v10, Lcom/google/appinventor/components/runtime/Navigation;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/geojson/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1338
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ljava/net/HttpURLConnection;

    const/4 v13, 0x1

    .line 1340
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1341
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=UTF-8"

    .line 1342
    invoke-virtual {v12, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "POST"

    .line 1343
    invoke-virtual {v12, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1344
    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    const-string v2, "Authorization"

    invoke-virtual {v12, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 1346
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"coordinates\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v2, v3, v13

    aput v2, v3, v14

    .line 1423
    const-class v4, Ljava/lang/Double;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Double;

    .line 1424
    aget-object v4, v3, v14

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v14

    .line 1425
    aget-object v4, v3, v14

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v13

    .line 1426
    aget-object v4, v3, v13

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v14

    .line 1427
    aget-object v4, v3, v13

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v13

    .line 1347
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \"language\": \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcom/google/appinventor/components/runtime/Navigation;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    .line 1349
    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1350
    array-length v3, v1

    invoke-virtual {v12, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 1351
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1353
    :try_start_1
    array-length v4, v1

    invoke-virtual {v3, v1, v14, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1354
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1356
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 1359
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-eq v1, v3, :cond_0

    .line 1360
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xfa3

    new-array v2, v2, [Ljava/lang/Object;

    .line 1361
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v14

    .line 1362
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    .line 1360
    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1395
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    .line 1365
    :cond_0
    :try_start_3
    invoke-static {v12}, Lcom/google/appinventor/components/runtime/Navigation;->getResponseContent(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Navigation"

    .line 1366
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    invoke-static {v1, v13}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v1, "features"

    .line 1368
    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1369
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1370
    invoke-virtual {v1, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v4, "summary"

    .line 1371
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 1372
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/YailDictionary;

    const-string v5, "distance"

    .line 1373
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-string v5, "duration"

    .line 1374
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v14

    const-string v0, "segments"

    aput-object v0, v4, v13

    .line 1438
    sget-object v0, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v0, v4, v2

    const/4 v0, 0x3

    const-string v2, "steps"

    aput-object v2, v4, v0

    const/4 v0, 0x4

    sget-object v2, Lcom/google/appinventor/components/runtime/util/YailDictionary;->ALL:Ljava/lang/Object;

    aput-object v2, v4, v0

    const/4 v0, 0x5

    const-string v2, "instruction"

    aput-object v2, v4, v0

    .line 1439
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1438
    invoke-static {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->walkKeyPath(Lcom/google/appinventor/components/runtime/util/YailObject;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1375
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    const-string v0, "geometry"

    const-string v2, "coordinates"

    .line 2432
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2433
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/util/YailDictionary;->getObjectAtKeyPath(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 2434
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;->swapCoordinates(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v5

    .line 1378
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v15, Lcom/google/appinventor/components/runtime/Navigation$2;

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/Navigation$2;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    invoke-virtual {v0, v15}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1387
    :cond_1
    iget-object v0, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xfa4

    new-array v2, v14, [Ljava/lang/Object;

    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1395
    :goto_0
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception v0

    .line 1356
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 1357
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1391
    :try_start_5
    iget-object v1, v10, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0xfa2

    new-array v3, v13, [Ljava/lang/Object;

    .line 1392
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    .line 1391
    invoke-virtual {v1, v10, v11, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1395
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :goto_1
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1396
    throw v0
.end method


# virtual methods
.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "API Key for Open Route Service."
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-void
.end method

.method public EndLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the end location."
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLatitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 195
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    return-void

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd55

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 199
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "EndLatitude"

    .line 198
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public EndLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the end location."
    .end annotation

    .line 270
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 272
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 273
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "SetEndLocation"

    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v2, 0xd55

    new-array v3, v5, [Ljava/lang/Object;

    .line 275
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    .line 274
    invoke-interface {p1, p0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 276
    :cond_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result p1

    if-nez p1, :cond_1

    .line 277
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v0, 0xd56

    new-array v1, v5, [Ljava/lang/Object;

    .line 278
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 277
    invoke-interface {p1, p0, v6, v0, v1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 280
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    return-void
.end method

.method public EndLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the end location."
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public EndLongitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 213
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd56

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 217
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "EndLongitude"

    .line 216
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when the Openrouteservice returns the directions."
    .end annotation

    const-string v0, "Navigation"

    const-string v1, "GotDirections"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 330
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-object v0
.end method

.method public Language(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "en"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The language to use for textual directions."
    .end annotation

    .line 292
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void
.end method

.method public RequestDirections()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Request directions from the routing service."
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xfa1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Authorization"

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    .line 100
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Navigation;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Lorg/osmdroid/util/GeoPoint;

    .line 101
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/TransportMethod;

    .line 102
    new-instance v3, Lcom/google/appinventor/components/runtime/Navigation$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/Navigation$1;-><init>(Lcom/google/appinventor/components/runtime/Navigation;Lorg/osmdroid/util/GeoPoint;Lorg/osmdroid/util/GeoPoint;Lcom/google/appinventor/components/common/TransportMethod;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ResponseContent()Lcom/google/appinventor/components/runtime/util/YailDictionary;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Content of the last response as a dictionary."
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    return-object v0
.end method

.method public ServiceURL(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->vQeIU3Nt6lISgDcgPcgMyfTsPOzVWtilFVqv3Ws2SOY6jXuMnX7gL1LFHvLOLuoZ:Ljava/lang/String;

    return-void
.end method

.method public StartLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The latitude of the start location."
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLatitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 143
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd55

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 147
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "StartLatitude"

    .line 146
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public StartLocation(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the start location."
    .end annotation

    .line 177
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    .line 179
    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    .line 180
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLatitude(D)Z

    move-result p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "SetStartLocation"

    if-nez p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v2, 0xd55

    new-array v3, v5, [Ljava/lang/Object;

    .line 182
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    .line 181
    invoke-interface {p1, p0, v6, v2, v3}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 183
    :cond_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result p1

    if-nez p1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object p1

    const/16 v0, 0xd56

    new-array v1, v5, [Ljava/lang/Object;

    .line 185
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    .line 184
    invoke-interface {p1, p0, v6, v0, v1}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    return-void
.end method

.method public StartLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The longitude of the start location."
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public StartLongitude(D)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 161
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isValidLongitude(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    const/16 v1, 0xd56

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 165
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "StartLongitude"

    .line 164
    invoke-interface {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public TransportationMethod()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/TransportMethod;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 229
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/TransportMethod;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TransportationMethod(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/TransportMethod;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "foot-walking"
        editorType = "navigation_method"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The transportation method used for determining the route."
    .end annotation

    .line 262
    invoke-static {p1}, Lcom/google/appinventor/components/common/TransportMethod;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/TransportMethod;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 264
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Navigation;->TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V

    :cond_0
    return-void
.end method

.method public TransportationMethodAbstract()Lcom/google/appinventor/components/common/TransportMethod;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/TransportMethod;

    return-object v0
.end method

.method public TransportationMethodAbstract(Lcom/google/appinventor/components/common/TransportMethod;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/TransportMethod;

    return-void
.end method
