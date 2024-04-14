.class public Lcom/google/appinventor/components/runtime/Hygrometer;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A sensor component that can measure the relative ambient air humidity. Most Android devices do not have this sensor."
    iconName = "images/hygrometer.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    return-void
.end method


# virtual methods
.method public Humidity()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The relative ambient humidity as a percentage, if the sensor is available and enabled."
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Hygrometer;->getValue()F

    move-result v0

    return v0
.end method

.method public HumidityChanged(F)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when a change is detected in the ambient air humidity (expressed as a percentage)."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "HumidityChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method protected onValueChanged(F)V
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Hygrometer;->HumidityChanged(F)V

    return-void
.end method
