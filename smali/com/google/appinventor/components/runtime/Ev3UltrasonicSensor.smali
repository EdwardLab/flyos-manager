.class public Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EV3:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to an ultrasonic sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

.field private ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

.field private vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

.field private wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    const-string v0, "Ev3UltrasonicSensor"

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 44
    sget-object p1, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 47
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    .line 60
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    .line 61
    new-instance p1, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/16 p1, 0x5a

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->TopOfRange(I)V

    const/16 p1, 0x1e

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BottomOfRange(I)V

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->BelowRangeEventEnabled(Z)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->AboveRangeEventEnabled(Z)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->WithinRangeEventEnabled(Z)V

    .line 99
    sget-object p1, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->UnitAbstract(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)D
    .locals 6

    .line 110
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->sensorPortNumber:I

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toInt()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v2, 0x0

    const/16 v4, 0x1e

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->readInputSI(Ljava/lang/String;IIII)D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :cond_0
    return-wide v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)D
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;D)D
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    return-wide p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;Ljava/lang/String;)D
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 309
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:D

    .line 311
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

    return p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

    return p0
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone above the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AboveRange"

    .line 245
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 237
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the distance goes above the TopOfRange."
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone below the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BelowRange"

    .line 185
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 177
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the distance goes below the BottomOfRange."
    .end annotation

    .line 166
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 122
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 133
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->wGMjbGuJ9Yk6s2LaEm8v1pEJlXt36TYBWZSsia0LUgb1yMdHNGB7uRz3VqnF79D0:I

    return-void
.end method

.method public GetDistance()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current distance in centimeters as a value between 0 and 254, or -1 if the distance can not be read."
    .end annotation

    const-string v0, "GetDistance"

    .line 106
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public SetCmUnit()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in centimeters."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Centimeters:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public SetInchUnit()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Measure the distance in inches."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    sget-object v0, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->Inches:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .line 144
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "90"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 155
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:I

    return-void
.end method

.method public Unit()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/Options;
        value = Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The distance unit, which can be either \"cm\" or \"inch\"."
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    invoke-virtual {v0}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Unit(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "cm"
        editorType = "lego_ev3_ultrasonic_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 256
    invoke-static {p1}, Lcom/google/appinventor/components/common/UltrasonicSensorUnit;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0xc1f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Unit"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 262
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public UnitAbstract()Lcom/google/appinventor/components/common/UltrasonicSensorUnit;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/UltrasonicSensorUnit;

    return-object v0
.end method

.method public UnitAbstract(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V
    .locals 0

    .line 270
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/common/UltrasonicSensorUnit;)V

    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected distance has gone within the range."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "WithinRange"

    .line 215
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the distance goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .line 196
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Z

    return v0
.end method

.method public onDelete()V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3UltrasonicSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 318
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    return-void
.end method
