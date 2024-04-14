.class public final Lcom/google/appinventor/components/runtime/util/GeometryUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EARTH_RADIUS:D = 6378137.0

.field public static final ONE_DEG_IN_METERS:D = 111319.49079327358

.field public static final WEB_MERCATOR_SRID:I = 0x10e6

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lorg/locationtech/jts/geom/GeometryFactory;

    new-instance v1, Lorg/locationtech/jts/geom/PrecisionModel;

    invoke-direct {v1}, Lorg/locationtech/jts/geom/PrecisionModel;-><init>()V

    const/16 v2, 0x10e6

    invoke-direct {v0, v1, v2}, Lorg/locationtech/jts/geom/GeometryFactory;-><init>(Lorg/locationtech/jts/geom/PrecisionModel;I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    return-object p0
.end method

.method public static bearingTo(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 0

    .line 400
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 0

    .line 435
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 0

    .line 423
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 0

    .line 427
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToCentroid(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 0

    .line 431
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 0

    .line 419
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 0

    .line 405
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 0

    .line 410
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static bearingToEdge(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 0

    .line 415
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static coerceToDouble(Ljava/lang/Object;)D
    .locals 2

    .line 53
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public static coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;
    .locals 5

    .line 65
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 66
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToDouble(Ljava/lang/Object;)D

    move-result-wide p0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v4, v0, v2

    if-ltz v4, :cond_1

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v4, v0, v2

    if-gtz v4, :cond_1

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v2

    if-ltz v4, :cond_0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v2

    if-gtz v4, :cond_0

    .line 76
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, v0, v1, p0, p1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v2

    .line 74
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Longitude must be between -180 and 180."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Latitude must be between -90 and 90."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Longitude must be a numeric."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Latitude must be a numeric."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;
    .locals 4

    .line 129
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/locationtech/jts/geom/Coordinate;

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p2, p3, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p2, p3, p4, p5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {v2, p6, p7, p4, p5}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 p4, 0x2

    aput-object v2, v1, p4

    new-instance p4, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p4, p6, p7, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 p5, 0x3

    aput-object p4, v1, p5

    new-instance p4, Lorg/locationtech/jts/geom/Coordinate;

    invoke-direct {p4, p2, p3, p0, p1}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    const/4 p0, 0x4

    aput-object p4, v1, p0

    invoke-virtual {v0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object p0

    return-object p0
.end method

.method public static createGeometry(Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object p0

    return-object p0
.end method

.method public static createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/locationtech/jts/geom/Geometry;"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "holes must either be null or the same length as points."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/locationtech/jts/geom/Polygon;

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 147
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    .line 152
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    .line 154
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    .line 155
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v4

    goto :goto_1

    .line 148
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    .line 149
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object v3

    aput-object v3, v1, p1

    move p1, v4

    goto :goto_3

    :cond_4
    const/4 p0, 0x1

    if-ne v0, p0, :cond_5

    .line 158
    aget-object p0, v1, v2

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {p0, v1}, Lorg/locationtech/jts/geom/GeometryFactory;->createMultiPolygon([Lorg/locationtech/jts/geom/Polygon;)Lorg/locationtech/jts/geom/MultiPolygon;

    move-result-object p0

    return-object p0

    .line 140
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "points must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .line 121
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPoint(Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/Point;

    move-result-object p0

    return-object p0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)D
    .locals 0

    .line 246
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D
    .locals 0

    .line 242
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getLocation()Lorg/osmdroid/api/IGeoPoint;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D
    .locals 8

    .line 230
    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 231
    invoke-interface {p0}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 232
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 233
    invoke-interface {p1}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    sub-double v6, v4, v0

    sub-double/2addr p0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v2

    .line 236
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v0, v0, v4

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double v0, v0, p0

    add-double/2addr v6, v0

    .line 237
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    mul-double p0, p0, v2

    const-wide v0, 0x415854a640000000L    # 6378137.0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 0

    .line 384
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 0

    .line 388
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 0

    .line 380
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 0

    .line 356
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 0

    .line 348
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 0

    .line 352
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 0

    .line 360
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 0

    .line 344
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 0

    .line 336
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 0

    .line 328
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 0

    .line 332
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 0

    .line 340
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 0

    .line 372
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 0

    .line 368
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 0

    .line 376
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 0

    .line 364
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 0

    .line 396
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenCentroids(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 0

    .line 392
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .line 310
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 4

    .line 315
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 3

    .line 305
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v0

    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .line 279
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2

    .line 271
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2

    .line 275
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2

    .line 284
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2

    .line 267
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 3

    .line 258
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/util/GeoPoint;->distanceTo(Lorg/osmdroid/api/IGeoPoint;)I

    move-result p0

    int-to-double v0, p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;)D
    .locals 2

    .line 250
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapLineString;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2

    .line 254
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2

    .line 263
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;)D
    .locals 4

    .line 296
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide v0

    const-wide v2, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double v0, v0, v2

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapCircle;->Radius()D

    move-result-wide p0

    sub-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double v2, v0, p0

    if-gez v2, :cond_0

    return-wide p0

    :cond_0
    return-wide v0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;)D
    .locals 2

    .line 292
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2

    .line 301
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2

    .line 288
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapPolygon;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)D
    .locals 2

    .line 324
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static distanceBetweenEdges(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;Lorg/osmdroid/util/GeoPoint;)D
    .locals 2

    .line 320
    invoke-interface {p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/locationtech/jts/geom/Geometry;->distance(Lorg/locationtech/jts/geom/Geometry;)D

    move-result-wide p0

    const-wide v0, 0x40fb2d77da4a0c32L    # 111319.49079327358

    mul-double p0, p0, v0

    return-wide p0
.end method

.method public static geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;
    .locals 5

    .line 226
    new-instance v0, Lorg/locationtech/jts/geom/Coordinate;

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/locationtech/jts/geom/Coordinate;-><init>(DD)V

    return-object v0
.end method

.method public static geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/LinearRing;"
        }
    .end annotation

    .line 208
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLinearRing([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object p0

    return-object p0
.end method

.method public static getCentroid(Ljava/util/List;Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .line 187
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object p0

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static getMidpoint(Ljava/util/List;)Lorg/osmdroid/util/GeoPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/osmdroid/util/GeoPoint;"
        }
    .end annotation

    .line 162
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    new-instance p0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object p0

    .line 165
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 166
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p0}, Lorg/osmdroid/util/GeoPoint;-><init>(Lorg/osmdroid/util/GeoPoint;)V

    return-object v0

    .line 168
    :cond_1
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/GeometryFactory;->createLineString([Lorg/locationtech/jts/geom/Coordinate;)Lorg/locationtech/jts/geom/LineString;

    move-result-object p0

    .line 169
    invoke-virtual {p0}, Lorg/locationtech/jts/geom/LineString;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object p0

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p0

    return-object p0
.end method

.method public static isMultiPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 3

    .line 567
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 568
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-class v1, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v2, "list"

    invoke-static {p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPolygon(Lcom/google/appinventor/components/runtime/util/YailList;)Z
    .locals 4

    .line 546
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 550
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-class v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "list"

    invoke-static {p0, v2, v3}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public static isValidLatitude(D)Z
    .locals 3

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidLongitude(D)Z
    .locals 3

    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, p0

    if-gtz v2, :cond_0

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpg-double v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;
    .locals 5

    .line 222
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getY()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/locationtech/jts/geom/Point;->getX()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    return-object v0
.end method

.method public static multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 502
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 503
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v3, "list"

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static multiPolygonHolesFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 511
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 514
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v4, "list"

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 516
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 520
    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object p0

    throw p0
.end method

.method public static multiPolygonHolesToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 527
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_0

    .line 528
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 530
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 531
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static multiPolygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 482
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_1

    .line 483
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 485
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 486
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->polygonToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static multiPolygonToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 494
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 495
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    return-object p0
.end method

.method public static pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;
    .locals 7

    .line 93
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->coerceToPoint(Ljava/lang/Object;Ljava/lang/Object;)Lorg/osmdroid/util/GeoPoint;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 100
    :catch_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v4, 0xd4d

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->get(I)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-direct {v0, v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v4, 0xd51

    new-array v5, v2, [Ljava/lang/Object;

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-direct {v0, v4, v5}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0
.end method

.method public static pointsFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 108
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    const/4 v1, 0x1

    .line 109
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    :try_start_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-class v3, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v4, "list"

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TypeUtil;->castNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->pointFromYailList(Lcom/google/appinventor/components/runtime/util/YailList;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/DispatchableError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 114
    invoke-static {v1, p0}, Lcom/google/appinventor/components/runtime/errors/IterationError;->fromError(ILcom/google/appinventor/components/runtime/errors/DispatchableError;)Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    move-result-object p0

    throw p0

    :cond_0
    return-object v0
.end method

.method public static pointsListToYailList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;)",
            "Lcom/google/appinventor/components/runtime/util/YailList;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/api/IGeoPoint;

    .line 87
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p0

    return-object p0
.end method

.method public static pointsToCoordinates(Ljava/util/List;)[Lorg/locationtech/jts/geom/Coordinate;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)[",
            "Lorg/locationtech/jts/geom/Coordinate;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 195
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GeoPoint;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/osmdroid/util/GeoPoint;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 196
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    xor-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lorg/locationtech/jts/geom/Coordinate;

    .line 198
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/GeoPoint;

    add-int/lit8 v5, v3, 0x1

    .line 199
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointToCoordinate(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Coordinate;

    move-result-object v4

    aput-object v4, v2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 202
    aget-object p0, v2, v0

    aput-object p0, v2, v3

    :cond_1
    return-object v2
.end method

.method public static polygonToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-lt v1, v4, :cond_3

    const/4 v1, 0x0

    .line 464
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    move-object/from16 v4, p0

    .line 465
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 466
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 469
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ne v6, v7, :cond_0

    .line 470
    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v7

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 472
    :cond_0
    new-instance v6, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v12

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v14

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    move-object v11, v6

    invoke-direct/range {v11 .. v17}, Lorg/osmdroid/util/GeoPoint;-><init>(DDD)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Invalid number of dimensions in polygon, expected 2."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0

    .line 461
    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/errors/DispatchableError;

    const/16 v1, 0xd4c

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "Too few points in Polygon, expected 3."

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/DispatchableError;-><init>(I[Ljava/lang/Object;)V

    throw v0
.end method

.method public static ringToPolygon(Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object p0

    return-object p0
.end method

.method public static ringToPolygon(Ljava/util/List;Ljava/util/List;)Lorg/locationtech/jts/geom/Polygon;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)",
            "Lorg/locationtech/jts/geom/Polygon;"
        }
    .end annotation

    .line 212
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object p0

    .line 213
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/locationtech/jts/geom/LinearRing;

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    .line 216
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->geoPointsToLinearRing(Ljava/util/List;)Lorg/locationtech/jts/geom/LinearRing;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 218
    :cond_0
    sget-object p1, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/GeometryFactory;

    invoke-virtual {p1, p0, v0}, Lorg/locationtech/jts/geom/GeometryFactory;->createPolygon(Lorg/locationtech/jts/geom/LinearRing;[Lorg/locationtech/jts/geom/LinearRing;)Lorg/locationtech/jts/geom/Polygon;

    move-result-object p0

    return-object p0
.end method
