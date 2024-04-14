.class public Lcom/google/appinventor/components/runtime/Rectangle;
.super Lcom/google/appinventor/components/runtime/PolygonBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Rectangle"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

.field private sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/google/appinventor/components/runtime/Rectangle$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Rectangle$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Rectangle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 2

    .line 90
    sget-object v0, Lcom/google/appinventor/components/runtime/Rectangle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/PolygonBase;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    .line 38
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 39
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    .line 40
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    .line 91
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method


# virtual methods
.method public Bounds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bounding box of the Rectangle in the format ((North West) (South East))."
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Double;

    .line 187
    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Double;

    .line 188
    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v3

    iget-wide v5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    new-array v0, v0, [Lcom/google/appinventor/components/runtime/util/YailList;

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    .line 189
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Center()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the center of the Rectangle as a list of the form (Latitude Longitude)."
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public EastLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 125
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    return-wide v0
.end method

.method public EastLongitude(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 117
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    .line 118
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    return-void
.end method

.method public NorthLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 141
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    return-wide v0
.end method

.method public NorthLatitude(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 133
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    .line 134
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 135
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    return-void
.end method

.method public SetCenter(DD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the Rectangle so that it is centered on the given latitude and longitude while attempting to maintain the width and height of the Rectangle as measured from the center to the edges."
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0xd4d

    const-string v4, "SetCenter"

    const-wide v5, -0x3fa9800000000000L    # -90.0

    cmpg-double v7, p1, v5

    if-ltz v7, :cond_3

    const-wide v5, 0x4056800000000000L    # 90.0

    cmpl-double v7, p1, v5

    if-lez v7, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide v5, -0x3f99800000000000L    # -180.0

    cmpg-double v7, p3, v5

    if-ltz v7, :cond_2

    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v7, p3, v5

    if-lez v7, :cond_1

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    .line 206
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 207
    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    iget-wide v3, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 208
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 209
    new-instance v4, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v5

    iget-wide v7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    .line 210
    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v5

    .line 211
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lorg/osmdroid/api/IGeoPoint;Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide v3

    div-double/2addr v3, v5

    .line 212
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    const/4 p1, 0x0

    .line 213
    invoke-virtual {v0, v1, v2, p1}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    const/high16 p1, 0x43340000    # 180.0f

    .line 214
    invoke-virtual {v0, v1, v2, p1}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    const/high16 p1, 0x42b40000    # 90.0f

    .line 215
    invoke-virtual {v0, v3, v4, p1}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    const/high16 p1, 0x43870000    # 270.0f

    .line 216
    invoke-virtual {v0, v3, v4, p1}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DF)Lorg/osmdroid/util/GeoPoint;

    move-result-object p1

    invoke-virtual {p1}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 218
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    return-void

    .line 202
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v5, p0, v4, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 198
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v5}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-virtual {v5, p0, v4, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public SouthLatitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 157
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    return-wide v0
.end method

.method public SouthLatitude(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 149
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 151
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/MapFeature;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the type of the feature. For rectangles, this returns MapFeature.Rectangle (\"Rectangle\")."
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;
    .locals 1

    .line 109
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->Rectangle:Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public WestLongitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 173
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    return-wide v0
.end method

.method public WestLongitude(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 165
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 166
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    .line 167
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;)V

    return-void
.end method

.method public varargs accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "TT;>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 223
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapRectangle;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 8

    .line 228
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    invoke-static/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(DDDD)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public updateBounds(DDDD)V
    .locals 0

    .line 233
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Rectangle;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:D

    .line 234
    iput-wide p3, p0, Lcom/google/appinventor/components/runtime/Rectangle;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:D

    .line 235
    iput-wide p5, p0, Lcom/google/appinventor/components/runtime/Rectangle;->sLSXXiYjDERyx7CKvO5GstTCcI8HiXXLiPYrugcXt2517h4ADL52v0RLLmUd9xMb:D

    .line 236
    iput-wide p7, p0, Lcom/google/appinventor/components/runtime/Rectangle;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud:D

    .line 237
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Rectangle;->clearGeometry()V

    return-void
.end method
