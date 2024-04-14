.class final Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/GeoJSONUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;


# direct methods
.method private constructor <init>(Ljava/io/PrintStream;)V
    .locals 0

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/io/PrintStream;B)V
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;I)V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 561
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "\":\"&H"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 562
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    .line 563
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 566
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 567
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 551
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 555
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "\"type\":\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 535
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Ljava/lang/Void;
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "Feature"

    .line 718
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 720
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/osmdroid/util/GeoPoint;)V

    .line 721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Ljava/lang/String;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 725
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "}}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Ljava/lang/Void;
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "Feature"

    .line 691
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 692
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 1623
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"LineString\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1624
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)V

    .line 1625
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 696
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 697
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "}}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Ljava/lang/Void;
    .locals 2

    .line 671
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "Feature"

    .line 672
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 674
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/osmdroid/util/GeoPoint;)V

    .line 675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Ljava/lang/String;)V

    .line 676
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 678
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 679
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorHorizontal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "anchorHorizontal"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->AnchorVertical()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "anchorVertical"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 681
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Height()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "height"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 682
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->ImageAsset()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->Width()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "width"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "}}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Ljava/lang/Void;
    .locals 8

    .line 703
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "Feature"

    .line 704
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    .line 1662
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "]}"

    const/4 v2, 0x1

    const-string v3, ","

    const/4 v4, 0x0

    if-le v0, v2, :cond_3

    .line 2629
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v5, "\"geometry\":{\"type\":\"MultiPolygon\",\"coordinates\":["

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2630
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2631
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2633
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v2, :cond_0

    .line 2634
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2635
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2636
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)V

    .line 2637
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2638
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2639
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v7, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2640
    invoke-direct {p0, v6}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)V

    goto :goto_1

    .line 2643
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 2646
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 2650
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v2, "\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2651
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)V

    .line 2652
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2653
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getHolePoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2654
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 2655
    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)V

    goto :goto_2

    .line 2658
    :cond_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 707
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Ljava/lang/String;)V

    .line 708
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 710
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 711
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "}}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private varargs hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Ljava/lang/Void;
    .locals 7

    .line 731
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-string v0, "Feature"

    .line 732
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, ",\"geometry\":{\"type\":\"Polygon\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "],"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "]]}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 741
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    .line 742
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V

    .line 743
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->NorthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "NorthLatitude"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 744
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->WestLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "WestLongitude"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 745
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->SouthLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "SouthLatitude"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 746
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->EastLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "EastLongitude"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 747
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "}}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;)V
    .locals 2

    .line 601
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillColor()I

    move-result v0

    const-string v1, "fill"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;I)V

    .line 602
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasFill;->FillOpacity()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "fill-opacity"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V
    .locals 2

    .line 595
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeColor()I

    move-result v0

    const-string v1, "stroke"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;I)V

    .line 596
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeOpacity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v1, "stroke-opacity"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 597
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;->StrokeWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "stroke-width"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V
    .locals 2

    .line 587
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Description()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Draggable()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "draggable"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 589
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->EnableInfobox()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "infobox"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Title()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->Visible()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "visible"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 540
    :try_start_0
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 541
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, ",\""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "\":"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to serialize the value of \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" as JSON"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GeoJSONUtil"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)V"
        }
    .end annotation

    .line 607
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(C)V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintStream;->print(D)V

    .line 613
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/osmdroid/util/GeoPoint;)V
    .locals 4

    .line 571
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, "\"geometry\":{\"type\":\"Point\",\"coordinates\":["

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 573
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintStream;->print(D)V

    .line 575
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintStream;->print(D)V

    .line 579
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    const-string v0, "]}"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/osmdroid/util/GeoPoint;)Z
    .locals 4

    .line 756
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getAltitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Ljava/lang/String;)V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",\"properties\":{\"$Type\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeoJSONUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
