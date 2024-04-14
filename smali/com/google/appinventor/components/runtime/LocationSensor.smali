.class public Lcom/google/appinventor/components/runtime/LocationSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component providing location information, including longitude, latitude, altitude (if supported by the device), speed (if supported by the device), and address.  This can also perform \"geocoding\", converting a given address (not necessarily the current one) to a latitude (with the <code>LatitudeFromAddress</code> method) and a longitude (with the <code>LongitudeFromAddress</code> method).</p>\n<p>In order to function, the component must have its <code>Enabled</code> property set to True, and the device must have location sensing enabled through wireless networks or GPS satellites (if outdoors).</p>\nLocation information might not be immediately available when an app starts.  You\'ll have to wait a short time for a location provider to be found and used, or wait for the OnLocationChanged event"
    iconName = "images/locationSensor.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.ACCESS_FINE_LOCATION",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_MOCK_LOCATION",
        "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/LocationSensor$a;,
        Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LocationSensor"

.field public static final UNKNOWN_VALUE:I


# instance fields
.field private ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Z

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

.field private XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Z

.field private final androidUIHandler:Landroid/os/Handler;

.field private enabled:Z

.field private f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private final handler:Landroid/os/Handler;

.field private havePermission:Z

.field private hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Criteria;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

.field private initialized:Z

.field private jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:I

.field private speed:F

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    const/4 v0, 0x1

    .line 228
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Z)V
    .locals 3

    .line 238
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 178
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    const/4 v0, 0x0

    .line 180
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    .line 184
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 192
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    const-wide/16 v1, 0x0

    .line 202
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    .line 203
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    .line 204
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    const/4 v1, 0x0

    .line 205
    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    .line 206
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Z

    .line 207
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Z

    .line 210
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 216
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 218
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    .line 239
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 240
    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 241
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->handler:Landroid/os/Handler;

    .line 243
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 244
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    const v1, 0xea60

    .line 247
    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:I

    const/4 v1, 0x5

    .line 248
    iput v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:I

    .line 251
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    .line 252
    new-instance v1, Landroid/location/Geocoder;

    invoke-direct {v1, p1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    const-string v1, "location"

    .line 253
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    .line 254
    new-instance p1, Landroid/location/Criteria;

    invoke-direct {p1}, Landroid/location/Criteria;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Criteria;

    .line 255
    new-instance p1, Lcom/google/appinventor/components/runtime/LocationSensor$a;

    invoke-direct {p1, p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor$a;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;B)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    .line 256
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    .line 258
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    return-wide v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    return-wide p1
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Z

    return v0
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 733
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    return-wide p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)F
    .locals 0

    .line 69
    iget p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;F)F
    .locals 0

    .line 69
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->speed:F

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Landroid/os/Handler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Ljava/util/Set;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 1

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Z

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    return p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z
    .locals 6

    .line 669
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-nez v0, :cond_0

    .line 672
    sget-object v0, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getProvider("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") returned null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 675
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 676
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

    .line 677
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:I

    int-to-long v2, v1

    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    const/4 p1, 0x1

    .line 679
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    return p1
.end method

.method private stopListening()V
    .locals 2

    .line 691
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 693
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

    const/4 v0, 0x0

    .line 694
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    :cond_0
    return-void
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;)D
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    return-wide v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;D)D
    .locals 0

    .line 69
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    return-wide p1
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Z)V
    .locals 1

    .line 512
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    .line 513
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 517
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void

    :cond_1
    const-string p1, "Enabled"

    .line 519
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/LocationSensor;)Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return p0
.end method


# virtual methods
.method public Accuracy()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    return-wide v0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationProvider;

    if-eqz v0, :cond_1

    .line 461
    invoke-virtual {v0}, Landroid/location/LocationProvider;->getAccuracy()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public Altitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 449
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:D

    return-wide v0
.end method

.method public AvailableProviders()Ljava/util/List;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 611
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    return-object v0
.end method

.method public CurrentAddress()Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 529
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_5

    .line 533
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 534
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 535
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    if-eqz v0, :cond_5

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    :goto_0
    invoke-virtual {v0}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v3

    if-gt v1, v3, :cond_2

    .line 539
    invoke-virtual {v0, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 540
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 550
    instance-of v1, v0, Ljava/lang/IllegalArgumentException;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/io/IOException;

    if-nez v1, :cond_4

    instance-of v1, v0, Ljava/lang/IndexOutOfBoundsException;

    if-eqz v1, :cond_3

    goto :goto_1

    .line 556
    :cond_3
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected exception thrown by getting current address "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 553
    :cond_4
    :goto_1
    sget-object v1, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception thrown by getting current address "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    const-string v0, "No address available"

    return-object v0
.end method

.method public DistanceInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum distance interval, in meters, that the sensor will try to use for sending out location updates. For example, if this is set to 5, then the sensor will fire a LocationChanged event only after 5 meters have been traversed. However, the sensor does not guarantee that an update will be received at exactly the distance interval. It may take more than 5 meters to fire an event, for instance."
    .end annotation

    .line 397
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:I

    return v0
.end method

.method public DistanceInterval(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "sensor_dist_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-ltz p1, :cond_2

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 377
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:I

    .line 380
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz p1, :cond_1

    const-string p1, "DistanceInterval"

    .line 381
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 384
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 385
    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:I

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onDistanceIntervalChanged(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public Enabled(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 484
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    if-nez v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/LocationSensor$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 507
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 473
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    return v0
.end method

.method public HasAccuracy()Z
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Accuracy()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HasAltitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 414
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public HasLongitudeLatitude()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 406
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    .line 264
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->Enabled(Z)V

    return-void
.end method

.method public Latitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 440
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:D

    return-wide v0
.end method

.method public LatitudeFromAddress(Ljava/lang/String;)D
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives latitude of given address"
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    invoke-virtual {v2, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 575
    sget-object v3, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "latitude addressObjs size is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 576
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLatitude()D

    move-result-wide v0

    return-wide v0

    .line 577
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x65

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "LatitudeFromAddress"

    invoke-virtual {v2, p0, p1, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public LocationChanged(DDDF)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 274
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "LocationChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Longitude()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 431
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:D

    return-wide v0
.end method

.method public LongitudeFromAddress(Ljava/lang/String;)D
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Derives longitude of given address"
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Geocoder;

    invoke-virtual {v2, p1, v1}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 597
    sget-object v3, Lcom/google/appinventor/components/runtime/LocationSensor;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "longitude addressObjs size is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 598
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 601
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLongitude()D

    move-result-wide v0

    return-wide v0

    .line 599
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :catch_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x66

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "LongitudeFromAddress"

    invoke-virtual {v2, p0, p1, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ProviderLocked(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 331
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    return-void
.end method

.method public ProviderLocked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 321
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    return v0
.end method

.method public ProviderName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "NO PROVIDER"

    :cond_0
    return-object v0
.end method

.method public ProviderName(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    .line 312
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ProviderName"

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    return-void
.end method

.method public RefreshProvider(Ljava/lang/String;)V
    .locals 2

    .line 625
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->initialized:Z

    if-nez v0, :cond_0

    return-void

    .line 626
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    .line 628
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->havePermission:Z

    if-nez v0, :cond_1

    .line 630
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/LocationSensor$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor$2;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 644
    :cond_1
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 645
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    return-void

    .line 648
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    .line 649
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/location/Criteria;

    invoke-virtual {p1, v1, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 650
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 651
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 654
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 655
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Z

    if-eqz v1, :cond_4

    .line 657
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->hqHtvKVLFGgMVMSKZM3hViIxQKdIh8YXfZOV4lmVWV1e2Mndp07BOheWTgPW1jrN:Z

    if-nez p1, :cond_5

    .line 658
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public StatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 283
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "StatusChanged"

    .line 284
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public TimeInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the minimum time interval, in milliseconds, that the sensor will try to use for sending out location updates. However, location updates will only be received when the location of the phone actually changes, and use of the specified time interval is not guaranteed. For example, if 1000 is used as the time interval, location updates will never be fired sooner than 1000ms, but they may be fired anytime after."
    .end annotation

    .line 364
    iget v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:I

    return v0
.end method

.method public TimeInterval(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60000"
        editorType = "sensor_time_interval"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    if-ltz p1, :cond_2

    const v0, 0xf4240

    if-le p1, v0, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:I

    .line 347
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz p1, :cond_1

    const-string p1, "TimeInterval"

    .line 348
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;

    .line 352
    iget v1, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:I

    invoke-interface {v0, v1}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->onTimeIntervalChanged(I)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public addListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1

    .line 723
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    .line 724
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDelete()V
    .locals 0

    .line 719
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 703
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->enabled:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume"

    .line 704
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 712
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/LocationSensor;->stopListening()V

    return-void
.end method

.method public removeListener(Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 729
    invoke-interface {p1, v0}, Lcom/google/appinventor/components/runtime/LocationSensor$LocationSensorListener;->setSource(Lcom/google/appinventor/components/runtime/LocationSensor;)V

    return-void
.end method
