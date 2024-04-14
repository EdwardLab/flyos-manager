.class final Lcom/google/appinventor/components/runtime/Circle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Circle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 2089
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2090
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 2092
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 4071
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4072
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 4074
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 5062
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5063
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 5065
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 3080
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3081
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 3083
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    .line 1098
    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1099
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1101
    :cond_0
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/appinventor/components/runtime/Circle;

    invoke-static {p2, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
