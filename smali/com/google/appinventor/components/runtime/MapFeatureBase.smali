.class public abstract Lcom/google/appinventor/components/runtime/MapFeatureBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

.field private IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

.field private YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

.field protected container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

.field protected map:Lcom/google/appinventor/components/runtime/Map;

.field private tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

.field private visible:Z


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;",
            "Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 33
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    const/high16 v2, -0x1000000

    .line 35
    iput v2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    const/high16 v3, 0x3f800000    # 1.0f

    .line 36
    iput v3, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

    .line 37
    iput v1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    const-string v4, ""

    .line 38
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    .line 39
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    const/4 v5, 0x0

    .line 40
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    .line 41
    iput-boolean v5, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    .line 44
    new-instance v6, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase$1;-><init>(Lcom/google/appinventor/components/runtime/MapFeatureBase;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 91
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

    .line 96
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    .line 97
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    .line 98
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    .line 99
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Description(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Draggable(Z)V

    .line 101
    invoke-virtual {p0, v5}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->EnableInfobox(Z)V

    .line 102
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeColor(I)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeOpacity(F)V

    .line 104
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->StrokeWidth(I)V

    .line 105
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Title(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Visible(Z)V

    return-void
.end method


# virtual methods
.method public Centroid()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getCentroid()Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->asYailList(Lorg/osmdroid/api/IGeoPoint;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user clicked on the feature."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 291
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public Description()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The description displayed in the info window that appears when the user clicks on the map feature."
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    return-object v0
.end method

.method public Description(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    .line 228
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public DistanceToFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;Z)D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between two map features."
    .end annotation

    if-nez p1, :cond_0

    const-wide/high16 p1, -0x4010000000000000L    # -1.0

    return-wide p1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

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

.method public DistanceToPoint(DDZ)D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Compute the distance, in meters, between a map feature and a latitude, longitude point."
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v2, p1, p2, p3, p4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->accept(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureVisitor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public Drag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user dragged the map feature."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Drag"

    .line 313
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public Draggable(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 196
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    .line 197
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureDraggable(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public Draggable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The Draggable property is used to set whether or not the user can drag the Marker by long-pressing and then dragging the marker to a new location."
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    return v0
.end method

.method public EnableInfobox(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 244
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

    .line 245
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public EnableInfobox()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or disable the infobox window display when the user taps the feature."
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

    return v0
.end method

.method public HideInfobox()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the infobox if it is shown. If the infobox is not visible this function has no effect."
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user long-pressed on the feature. This event will only trigger if Draggable is false."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 299
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureLongClick(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public ShowInfobox()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the infobox for the feature. This will show the infobox even if {@link #EnableInfobox} is set to false."
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showInfobox(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public StartDrag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user started a drag operation."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StartDrag"

    .line 306
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStartDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public StopDrag()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The user stopped a drag operation."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StopDrag"

    .line 320
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->container:Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->FeatureStopDrag(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public StrokeColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The paint color used to outline the map feature."
    .end annotation

    .line 155
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    return v0
.end method

.method public StrokeColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 147
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    return-void
.end method

.method public StrokeOpacity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The opacity of the stroke used to outline the map feature."
    .end annotation

    .line 172
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

    return v0
.end method

.method public StrokeOpacity(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 163
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:F

    .line 164
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float p1, p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:I

    .line 165
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    return-void
.end method

.method public StrokeWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The width of the stroke used to outline the map feature."
    .end annotation

    .line 188
    iget v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    return v0
.end method

.method public StrokeWidth(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 180
    iput p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->YY8QFJ7NsKl2krKlLP4gKRTKnpLlHQvVopkx7p60xy1hzICdxizXFIQJXbKtydSp:I

    .line 181
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureStroke(Lcom/google/appinventor/components/runtime/util/MapFactory$HasStroke;)V

    return-void
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The title displayed in the info window that appears when the user clicks on the map feature."
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    .line 212
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->updateFeatureText(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 123
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 126
    :cond_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    if-eqz p1, :cond_1

    .line 128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->showFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    goto :goto_0

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->hideFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Map;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .line 139
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->visible:Z

    return v0
.end method

.method protected final declared-synchronized clearGeometry()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 347
    :try_start_0
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    .line 348
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract computeGeometry()Lorg/locationtech/jts/geom/Geometry;
.end method

.method public final declared-synchronized getCentroid()Lorg/osmdroid/util/GeoPoint;
    .locals 1

    monitor-enter p0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    if-nez v0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->getGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/locationtech/jts/geom/Geometry;->getCentroid()Lorg/locationtech/jts/geom/Point;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/GeometryUtil;->jtsPointToGeoPoint(Lorg/locationtech/jts/geom/Point;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/util/GeoPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getGeometry()Lorg/locationtech/jts/geom/Geometry;
    .locals 1

    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

    if-nez v0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MapFeatureBase;->computeGeometry()Lorg/locationtech/jts/geom/Geometry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/locationtech/jts/geom/Geometry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromMap()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->removeFeature(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeature;)V

    return-void
.end method

.method public setMap(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 0

    .line 110
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MapFeatureBase;->map:Lcom/google/appinventor/components/runtime/Map;

    return-void
.end method
