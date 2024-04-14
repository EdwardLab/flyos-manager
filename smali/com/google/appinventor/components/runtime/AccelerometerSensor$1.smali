.class final Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/AccelerometerSensor;->startListening()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->getDeviceDefaultOrientation()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->access$002(Lcom/google/appinventor/components/runtime/AccelerometerSensor;I)I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceDefaultOrientation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AccelerometerSensor$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AccelerometerSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/AccelerometerSensor;->access$000(Lcom/google/appinventor/components/runtime/AccelerometerSensor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccelerometerSensor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Configuration.ORIENTATION_LANDSCAPE = 2"

    .line 321
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Configuration.ORIENTATION_PORTRAIT = 1"

    .line 322
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
