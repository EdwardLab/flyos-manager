.class public Lcom/google/appinventor/components/runtime/FeatureCollection;
.super Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MAPS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A FeatureColletion contains one or more map features as a group. Any events fired on a feature in the collection will also trigger the corresponding event on the collection object. FeatureCollections can be loaded from external resources as a means of populating a Map with content."
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

.field private map:Lcom/google/appinventor/components/runtime/Map;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    .line 38
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureContainer;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->map:Lcom/google/appinventor/components/runtime/Map;

    return-void
.end method


# virtual methods
.method public FeaturesFromGeoJSON(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Loads a collection of features from the given string. If the string is not valid GeoJSON, the ErrorLoadingFeatureCollection error will be run with url = <string>."
    .end annotation

    :try_start_0
    const-string v0, "<string>"

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/FeatureCollection;->processGeoJSON(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FeatureCollection;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/16 v1, 0xd53

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "FeaturesFromGeoJSON"

    .line 50
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "A GeoJSON document was successfully read from url. The features specified in the document are provided as a list in features."
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->GotFeatures(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public Source()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets or sets the source URL used to populate the feature collection. If the feature collection was not loaded from a URL, this will be the empty string."
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    return-object v0
.end method

.method public Source(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "geojson_type"
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:Ljava/lang/String;

    return-void
.end method

.method public Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FeatureCollection;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->setFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;Z)V

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FeatureCollection;->getMap()Lcom/google/appinventor/components/runtime/Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Map;->getController()Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/appinventor/components/runtime/util/MapFactory$MapController;->isFeatureCollectionVisible(Lcom/google/appinventor/components/runtime/util/MapFactory$MapFeatureCollection;)Z

    move-result v0

    return v0
.end method

.method public getMap()Lcom/google/appinventor/components/runtime/Map;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FeatureCollection;->map:Lcom/google/appinventor/components/runtime/Map;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
