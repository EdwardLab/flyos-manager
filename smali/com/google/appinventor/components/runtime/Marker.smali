.class public Lcom/google/appinventor/components/runtime/Marker;
.super Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>An icon positioned at a point to indicate information on a map. Markers can be used to provide an info window, custom fill and stroke colors, and custom images to convey information to the user.</p>"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "osmdroid.aar",
        "androidsvg.jar"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Marker"

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/HorizontalAlignment;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/VerticalAlignment;

.field private imagePath:Ljava/lang/String;

.field private opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker$1;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Marker$1;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 125
    new-instance v0, Lcom/google/appinventor/components/runtime/Marker$2;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/Marker$2;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 4

    .line 175
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;-><init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/google/appinventor/components/common/HorizontalAlignment;->Center:Lcom/google/appinventor/components/common/HorizontalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 65
    sget-object v1, Lcom/google/appinventor/components/common/VerticalAlignment;->Bottom:Lcom/google/appinventor/components/common/VerticalAlignment;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 70
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    const/4 v1, -0x1

    .line 75
    iput v1, p0, Lcom/google/appinventor/components/runtime/Marker;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    .line 80
    iput v1, p0, Lcom/google/appinventor/components/runtime/Marker;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    .line 176
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->addFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    const/4 p1, 0x0

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Marker;->ShowShadow(Z)V

    const/4 p1, 0x3

    .line 178
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Marker;->AnchorHorizontal(I)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Marker;->AnchorVertical(I)V

    .line 180
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Marker;->ImageAsset(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Marker;->Width(I)V

    .line 182
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Marker;->Height(I)V

    .line 183
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Latitude(D)V

    .line 184
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Marker;->Longitude(D)V

    return-void
.end method


# virtual methods
.method public AnchorHorizontal()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/HorizontalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The horizontal alignment property controls where the Marker\'s anchor is located relative to its width. The choices are: 1 = left aligned, 3 = horizontally centered, 2 = right aligned."
    .end annotation

    .line 282
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->AnchorHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AnchorHorizontal(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/HorizontalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/HorizontalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/HorizontalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xd59

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "AnchorHorizontal"

    .line 270
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Marker;->AnchorHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V

    return-void
.end method

.method public AnchorHorizontalAbstract()Lcom/google/appinventor/components/common/HorizontalAlignment;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/HorizontalAlignment;

    return-object v0
.end method

.method public AnchorHorizontalAbstract(Lcom/google/appinventor/components/common/HorizontalAlignment;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/HorizontalAlignment;

    if-eq p1, v0, :cond_0

    .line 301
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/HorizontalAlignment;

    .line 302
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    :cond_0
    return-void
.end method

.method public AnchorVertical()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/VerticalAlignment;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The vertical alignment property controls where the Marker\'s anchor is located relative to its height. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom."
    .end annotation

    .line 325
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->AnchorVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public AnchorVertical(I)V
    .locals 4
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/VerticalAlignment;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "3"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 312
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/common/VerticalAlignment;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/VerticalAlignment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xd58

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "AnchorVertical"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 317
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Marker;->AnchorVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V

    return-void
.end method

.method public AnchorVerticalAbstract()Lcom/google/appinventor/components/common/VerticalAlignment;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/VerticalAlignment;

    return-object v0
.end method

.method public AnchorVerticalAbstract(Lcom/google/appinventor/components/common/VerticalAlignment;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 344
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/VerticalAlignment;

    .line 345
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    :cond_0
    return-void
.end method

.method public BearingToFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Z)D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bearing from the Marker to the given map feature, in degrees from due north. If the centroids parameter is true, the bearing will be to the center of the map feature. Otherwise, the bearing will be computed to the point in the feature nearest the Marker."
    .end annotation

    if-nez p1, :cond_0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    .line 455
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-interface {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public BearingToPoint(DD)D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the bearing from the Marker to the given latitude and longitude, in degrees from due north."
    .end annotation

    .line 446
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/osmdroid/util/GeoPoint;->bearingTo(Lorg/osmdroid/api/IGeoPoint;)D

    move-result-wide p1

    return-wide p1
.end method

.method public DistanceToPoint(DD)D
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between a map feature and a latitude, longitude point."
    .end annotation

    .line 438
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->distanceBetween(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;Lorg/osmdroid/util/GeoPoint;)D

    move-result-wide p1

    return-wide p1
.end method

.method public DistanceToPoint(DDZ)D
    .locals 0

    .line 431
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Marker;->DistanceToPoint(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public Height()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 396
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_1

    neg-int v0, v0

    int-to-double v0, v0

    const-wide v2, -0x3f70c00000000000L    # -1000.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 399
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    :cond_1
    return v0
.end method

.method public Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 389
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    .line 390
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    rsub-int p1, p1, -0x3e8

    .line 407
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->opkAxsBiNe4U2WnUIj3h2psrvR65Yw7R3K1A4XT1tnHgd80YyvpOyialIyu2UQYR:I

    .line 408
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void
.end method

.method public ImageAsset()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The ImageAsset property is used to provide an alternative image for the Marker."
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public ImageAsset(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Asset;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 245
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "ImageAsset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->imagePath:Ljava/lang/String;

    .line 247
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureImage(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public Latitude(D)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "latitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 208
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "Latitude"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 213
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 214
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xd55

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public Longitude(D)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "longitude"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 227
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "Longitude"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, p1, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 232
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 233
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void

    .line 229
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v2, 0xd56

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public SetLocation(DD)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the location of the marker."
    .end annotation

    .line 413
    sget-object v0, Lcom/google/appinventor/components/runtime/Marker;->TAG:Ljava/lang/String;

    const-string v1, "SetLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 415
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    .line 416
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeaturePosition(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void
.end method

.method public ShowShadow(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    return-void
.end method

.method public ShowShadow()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets whether or not the shadow of the Marker is shown."
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public StrokeColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 258
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureBaseWithFill;->StrokeColor(I)V

    .line 259
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    return-void
.end method

.method public Type()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/MapFeature;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the type of the feature. For Markers, this returns MapFeature.Marker (\"Marker\")."
    .end annotation

    .line 191
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/MapFeature;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TypeAbstract()Lcom/google/appinventor/components/common/MapFeature;
    .locals 1

    .line 201
    sget-object v0, Lcom/google/appinventor/components/common/MapFeature;->Marker:Lcom/google/appinventor/components/common/MapFeature;

    return-object v0
.end method

.method public Width()I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 371
    iget v0, p0, Lcom/google/appinventor/components/runtime/Marker;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_0
    const/16 v1, -0x3e8

    if-ge v0, v1, :cond_1

    neg-int v0, v0

    int-to-double v0, v0

    const-wide v2, -0x3f70c00000000000L    # -1000.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 374
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v0, v0, v2

    double-to-int v0, v0

    :cond_1
    return v0
.end method

.method public Width(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 364
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    .line 365
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

    return-void
.end method

.method public WidthPercent(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    rsub-int p1, p1, -0x3e8

    .line 382
    iput p1, p0, Lcom/google/appinventor/components/runtime/Marker;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    .line 383
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Marker;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureSize(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;)V

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

    .line 471
    invoke-interface {p1, p0, p2}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;->visit(Lcom/google/appinventor/components/runtime/util/MapFactory$MapMarker;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->createGeometry(Lorg/osmdroid/util/GeoPoint;)Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lorg/osmdroid/api/IGeoPoint;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    return-object v0
.end method

.method public updateLocation(DD)V
    .locals 1

    .line 465
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Marker;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lorg/osmdroid/util/GeoPoint;

    .line 466
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Marker;->clearGeometry()V

    return-void
.end method
