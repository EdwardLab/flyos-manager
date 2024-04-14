.class public Lcom/google/appinventor/components/runtime/BatteryManager;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->UTILITIES:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/batterymanager.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:F

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:F

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/BroadcastReceiver;

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

.field private moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/lang/String;

.field private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/lang/String;

.field private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Z

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "BatteryManager"

    .line 34
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->TAG:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/lang/String;

    const/4 v1, 0x0

    .line 38
    iput v1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    .line 40
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Z

    .line 41
    iput v1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    .line 42
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:F

    .line 44
    iput v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:F

    .line 165
    new-instance v0, Lcom/google/appinventor/components/runtime/BatteryManager$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/BatteryManager$1;-><init>(Lcom/google/appinventor/components/runtime/BatteryManager;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/BroadcastReceiver;

    .line 50
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 51
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:F

    return p1
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    return p1
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/lang/String;

    return-object p1
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()V
    .locals 2

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:F

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "COLD"

    return-object p0

    :pswitch_1
    const-string p0, "UNSPECIFIED_FAILURE"

    return-object p0

    :pswitch_2
    const-string p0, "OVER_VOLTAGE"

    return-object p0

    :pswitch_3
    const-string p0, "DEAD"

    return-object p0

    :pswitch_4
    const-string p0, "OVERHEAT"

    return-object p0

    :pswitch_5
    const-string p0, "GOOD"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BatteryManager;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Z

    return p1
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/BatteryManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public BatteryHealth()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns battery health. It can be: COLD, DEAD, GOOD, OVERHEAT, OVER_VOLTAGE, UNKNOWN"
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/lang/String;

    return-object v0
.end method

.method public BatteryLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns battery percentage level"
    .end annotation

    .line 119
    iget v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    return v0
.end method

.method public BatteryPlugged()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicating whether the device is plugged in to a power source. Can be USB, AC or UNKNOWN"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/lang/String;

    return-object v0
.end method

.method public BatteryPresent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicating whether a battery is present"
    .end annotation

    .line 109
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Z

    return v0
.end method

.method public BatteryTemperature()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicating battery temperature in Centigrade"
    .end annotation

    .line 99
    iget v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:F

    return v0
.end method

.method public BatteryVoltage()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicating battery voltage in Volts"
    .end annotation

    .line 104
    iget v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:F

    return v0
.end method

.method public GetBatteryInfo(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list showing battery info for the specified key. Key can be: HEALTH, LEVEL, PLUGGED, PRESENT, STATUS, CHARGE_STATUS, TECHNOLOGY, TEMPERATURE, VOLTAGE. If key is empty, then all battery info is returned."
    .end annotation

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "all"

    if-eqz v0, :cond_0

    move-object p1, v1

    .line 63
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "health"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HEALTH="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "level"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 68
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LEVEL="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "plugged"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 71
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PLUGGED="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "present"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 74
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRESENT="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_8
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "status"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 78
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "STATUS="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "charge_status"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 81
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CHARGE_STATUS="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "technology"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 84
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TECHNOLOGY="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "temperature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 87
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TEMPERATURE="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "voltage"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 90
    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "VOLTAGE="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_12
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 94
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public StartMonitoring(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Starts or stops monitoring battery data. StartMonitoring only when you need to get information."
    .end annotation

    .line 130
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

    if-eqz p1, :cond_0

    .line 132
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/BatteryManager;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/BatteryManager;->StartMonitoring(Z)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/BatteryManager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()V

    return-void
.end method
