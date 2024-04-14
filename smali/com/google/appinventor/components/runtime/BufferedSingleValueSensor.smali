.class public abstract Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;
.super Lcom/google/appinventor/components/runtime/SingleValueSensor;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;
    }
.end annotation


# instance fields
.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;II)V
    .locals 0

    .line 25
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V

    .line 26
    new-instance p1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p3, p2}, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;-><init>(Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;IB)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    return-void
.end method


# virtual methods
.method protected getAverageValue()F
    .locals 7

    .line 39
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    const/4 v2, 0x0

    .line 2062
    :goto_0
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 2063
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    .line 2064
    iget-object v5, v0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    int-to-double v0, v2

    div-double/2addr v3, v0

    :goto_1
    double-to-float v0, v3

    return v0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 31
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->sensorType:I

    if-ne v0, v1, :cond_1

    .line 32
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 33
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1052
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    iget v4, v1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I

    aput-object v0, v3, v4

    .line 1053
    iget v0, v1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I

    iget-object v3, v1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Float;

    array-length v3, v3

    if-ne v0, v3, :cond_0

    .line 1054
    iput v2, v1, Lcom/google/appinventor/components/runtime/BufferedSingleValueSensor$a;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:I

    .line 34
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    :cond_1
    return-void
.end method
