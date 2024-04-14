.class final Lcom/google/appinventor/components/runtime/util/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private enabled:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->enabled:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    return-void
.end method

.method public final getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    return-object v0
.end method

.method public final onDistanceIntervalChanged(I)V
    .locals 0

    return-void
.end method

.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;->onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    :cond_0
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onTimeIntervalChanged(I)V
    .locals 0

    return-void
.end method

.method public final setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 150
    :cond_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz p1, :cond_2

    .line 152
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->enabled:Z

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    :cond_2
    return-void
.end method

.method public final startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z
    .locals 1

    .line 186
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;

    .line 187
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/a$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 189
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->enabled:Z

    .line 191
    :cond_0
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/a$a;->enabled:Z

    return p1
.end method

.method public final stopLocationProvider()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/a$a;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/LocationSensor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    .line 199
    :cond_0
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/a$a;->enabled:Z

    return-void
.end method
