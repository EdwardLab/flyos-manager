.class public Lcom/google/appinventor/components/runtime/GoogleMap;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;
.implements Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Visible component that show information on Google map."
    helpUrl = "https://docs.kodular.io/components/google/google-maps/"
    iconName = "images/gMap.png"
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-location.jar",
        "play-services-location.aar",
        "play-services-maps.jar",
        "play-services-maps.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar",
        "core-runtime.jar",
        "core-runtime.aar",
        "gson.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.INTERNET",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_FINE_LOCATION",
        "com.google.android.providers.gsf.permission.READ_GSERVICES"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GoogleMap$a;
    }
.end annotation


# static fields
.field private static final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final RADIUS_OF_EARTH_METERS:D = 6371009.0

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/location/LocationRequest;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Float;

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:F

.field private EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:I

.field private HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Ljava/lang/String;

.field private HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

.field private I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:I

.field private KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

.field private OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Z

.field private PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

.field private SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

.field private SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

.field private SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Z

.field private UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

.field private W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:I

.field private XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

.field private YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Z

.field private ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

.field private final androidUIHandler:Landroid/os/Handler;

.field private final eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

.field private eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private havePermission:Z

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Bundle;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/LatLng;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

.field private joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:Z

.field private kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:I

.field private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/GoogleMap$a;",
            ">;"
        }
    .end annotation
.end field

.field private lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

.field private muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation
.end field

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Float;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 157
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 173
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 174
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 184
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x1388

    .line 185
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const-wide/16 v1, 0x10

    .line 186
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/location/LocationRequest;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 105
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 123
    iput v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    const/4 v1, 0x0

    .line 124
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:Z

    .line 125
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Z

    .line 127
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    .line 128
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

    .line 129
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

    .line 131
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    .line 132
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

    .line 134
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    const-string v2, "standard"

    .line 135
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Ljava/lang/String;

    .line 140
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    const v2, -0xde690e

    .line 145
    iput v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:I

    .line 146
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Z

    .line 149
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

    .line 150
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    .line 151
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Z

    .line 158
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    .line 159
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    .line 162
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    const/high16 v2, 0x40000000    # 2.0f

    .line 165
    iput v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:F

    const/high16 v2, -0x1000000

    .line 166
    iput v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:I

    .line 167
    iput v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->W6T0KLh0HOscnxSkBKrzTm675pNrsPjnoOd2dFOC45d2E2zbErFUDn8t6kBqwFa:I

    const/16 v2, 0x14

    .line 168
    iput v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->kiRcALaZrUgDipBGGRCywmcwXV6owEI5LzNEBeYdXQPOcCNVgoIiuO1Q0ZEin4tA:I

    const/4 v3, 0x3

    new-array v4, v3, [F

    .line 169
    fill-array-data v4, :array_0

    invoke-static {v2, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    iput v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->EFLFxJJ7hYZabk7bFItjKUUJ7DOOvUWrCh3qTHGqJQXtWFnrbkhe9SsRqCU9oxdB:I

    .line 175
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->androidUIHandler:Landroid/os/Handler;

    .line 179
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->havePermission:Z

    const-string v2, "GoogleMap"

    const-string v4, "In the constructor of GoogleMap"

    .line 191
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    .line 193
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 194
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Form;->getOnCreateBundle()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Bundle;

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "savedInstanceState in GM: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/os/Bundle;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

    .line 199
    invoke-static {}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setId(I)V

    .line 201
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "map_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "map_tag:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-static {v4}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v6

    .line 2440
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "googlePlayServicesAvailable:"

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "checkGooglePlayServiceSDK"

    if-eq v6, v0, :cond_3

    const/4 v0, 0x2

    if-eq v6, v0, :cond_2

    if-eq v6, v3, :cond_1

    const/16 v0, 0x9

    if-eq v6, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2ef2

    new-array v3, v1, [Ljava/lang/Object;

    .line 2456
    invoke-virtual {v5, p0, v7, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x2ef1

    new-array v3, v1, [Ljava/lang/Object;

    .line 2452
    invoke-virtual {v5, p0, v7, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x2ef0

    new-array v3, v1, [Ljava/lang/Object;

    .line 2448
    invoke-virtual {v5, p0, v7, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x2eeb

    new-array v3, v1, [Ljava/lang/Object;

    .line 2444
    invoke-virtual {v5, p0, v7, v0, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 2464
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "com.google.android.apps.maps"

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2466
    :catch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2eea

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "checkGoogleMapInstalled"

    invoke-virtual {v0, p0, v4, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    if-nez v0, :cond_4

    const-string v0, "mMapFragment is null."

    .line 214
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Lcom/google/android/gms/maps/SupportMapFragment;->newInstance()Lcom/google/android/gms/maps/SupportMapFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 219
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 220
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const-string v1, "here before adding fragment"

    .line 221
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 225
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 228
    :cond_4
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT()V

    .line 229
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/4 p1, -0x2

    .line 231
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->Width(I)V

    .line 232
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->Height(I)V

    .line 233
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 234
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 235
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 236
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 0

    .line 98
    invoke-static {p0, p1, p2}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    return-object p0
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Z)V
    .locals 2

    .line 728
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@EnableMyLocation:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:Z

    if-eq v0, p1, :cond_0

    .line 730
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:Z

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 734
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    if-eqz p1, :cond_1

    .line 736
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V

    .line 737
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-void

    .line 739
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 742
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "EnableMyLocation"

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 10

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 12727
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 p0, 0x0

    aget p0, v0, p0

    float-to-double p0, p0

    return-wide p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()I
    .locals 4

    .line 248
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    const v3, 0xffffff

    if-le v2, v3, :cond_1

    const/4 v2, 0x1

    .line 252
    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I
    .locals 3

    const-string v0, "GoogleMap"

    const-string v1, "@addMarkerToMap"

    .line 1057
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1059
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance p2, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {p2}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 1060
    invoke-virtual {p2, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 1061
    invoke-static {p4}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p2

    .line 1059
    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 1063
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 1064
    invoke-virtual {p1, p5}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    .line 1066
    :cond_0
    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1067
    invoke-virtual {p1, p6}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    .line 1069
    :cond_1
    invoke-virtual {p1, p7}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    .line 1071
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p3
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    const-wide v0, 0x41584db040000000L    # 6371009.0

    div-double/2addr p1, v0

    .line 1721
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 1722
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v3, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    add-double/2addr v3, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Lcom/google/android/gms/maps/model/Marker;
    .locals 5

    .line 1349
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Marker;

    if-nez v0, :cond_0

    .line 1352
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v2, 0x2eed

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1353
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const-string p1, "getMarkerIfExisted"

    .line 1352
    invoke-virtual {v1, p0, p1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/lang/Object;
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eef

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 512
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "getCircleIfExisted"

    .line 511
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TT;TE;>;TE;)TT;"
        }
    .end annotation

    .line 1510
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1511
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/runtime/util/YailList;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 2036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2037
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2038
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/util/YailList;

    .line 12032
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v3, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 2038
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;Z)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->havePermission:Z

    return p1
.end method

.method private l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 295
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 297
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    return-void
.end method

.method private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    const-string v0, "GoogleMap"

    const-string v1, "setUpMapIfNeeded. mMap is null"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    return-void
.end method


# virtual methods
.method public AddCircle(DDDIFFIZ)I
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a circle overlay on the map UI with specified latitude and longitude for center. \"hue\" (min 0, max 360) and \"alpha\" (min 0, max 255) are used to set color and transparency level of the circle, \"strokeWidth\" and \"strokeColor\" are for the perimeter of the circle. Returning a unique id of the circle for future reference to events raised by moving this circle. If the circle isset to be draggable, two default markers will appear on the map: one in the center of the circle, another on the perimeter."
    .end annotation

    move-object v8, p0

    move-wide v0, p1

    move-wide v2, p3

    .line 4031
    sget-object v4, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput p8, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v6, v4, v5

    move/from16 v5, p7

    .line 486
    invoke-static {v5, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    if-eqz p11, :cond_0

    .line 490
    new-instance v10, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object v0, v10

    move-object v1, p0

    move-object v2, v4

    move-wide/from16 v3, p5

    move/from16 v5, p9

    move/from16 v6, p10

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$a;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;Lcom/google/android/gms/maps/model/LatLng;DFII)V

    .line 492
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 495
    :cond_0
    iget-object v4, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v5, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v6, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 496
    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    move-wide/from16 v1, p5

    .line 497
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    move/from16 v1, p9

    .line 498
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    move/from16 v1, p10

    .line 499
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 500
    invoke-virtual {v0, v7}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    .line 495
    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    move-result-object v0

    .line 501
    iget-object v1, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v9
.end method

.method public AddMarkers(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailLists for markers. The representation of a maker in the inner YailList is composed of: lat(double) [required], long(double) [required], Color, title(String), snippet(String), draggable(boolean). Return a list of unqiue ids for the added  markers. Note that the markers ids are not meant to persist after  the app is closed, but for temporary references to the markers within the program only. Return an empty list if any error happen in the input"
    .end annotation

    move-object/from16 v8, p0

    const/4 v9, 0x3

    new-array v10, v9, [F

    .line 923
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 924
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_d

    aget-object v0, v12, v15

    .line 926
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    const-string v1, "GoogleMap"

    const-string v3, "interior YailLiat"

    .line 927
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 932
    :goto_1
    invoke-virtual {v0, v14}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v5

    .line 933
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 934
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v16, 0x0

    .line 936
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 937
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    .line 940
    instance-of v4, v5, Lgnu/math/DFloNum;

    if-eqz v4, :cond_2

    instance-of v4, v2, Lgnu/math/DFloNum;

    if-nez v4, :cond_1

    goto :goto_2

    .line 943
    :cond_1
    check-cast v5, Lgnu/math/DFloNum;

    invoke-virtual {v5}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 944
    check-cast v2, Lgnu/math/DFloNum;

    invoke-virtual {v2}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_3

    :cond_2
    :goto_2
    move-object v4, v6

    move-object v2, v14

    const/4 v3, 0x0

    .line 949
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v17, -0x3fa9800000000000L    # -90.0

    cmpg-double v14, v5, v17

    if-ltz v14, :cond_3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v17, 0x4056800000000000L    # 90.0

    cmpl-double v14, v5, v17

    if-gtz v14, :cond_3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v17, -0x3f99800000000000L    # -180.0

    cmpg-double v14, v5, v17

    if-ltz v14, :cond_3

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide v17, 0x4066800000000000L    # 180.0

    cmpl-double v14, v5, v17

    if-lez v14, :cond_4

    :cond_3
    const/4 v3, 0x0

    .line 955
    :cond_4
    iget v5, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:I

    .line 960
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v6

    const-string v14, "Value: "

    if-lt v6, v9, :cond_6

    const/4 v6, 0x2

    .line 962
    invoke-virtual {v0, v6}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    .line 963
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v17, v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    instance-of v3, v6, Lgnu/math/IntNum;

    if-eqz v3, :cond_5

    .line 967
    check-cast v6, Lgnu/math/IntNum;

    invoke-virtual {v6}, Lgnu/math/IntNum;->intValue()I

    move-result v5

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    goto :goto_4

    :cond_6
    move/from16 v17, v3

    .line 973
    :goto_4
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v6, 0x4

    const-string v9, ""

    if-lt v3, v6, :cond_7

    const/4 v3, 0x3

    .line 974
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v16

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_5

    :cond_7
    move-object v6, v9

    .line 979
    :goto_5
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    move-object/from16 v16, v9

    const/4 v9, 0x5

    if-lt v3, v9, :cond_8

    const/4 v3, 0x4

    .line 980
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 981
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v12

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_6

    :cond_8
    move-object/from16 v19, v12

    .line 985
    :goto_6
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v3

    const/4 v9, 0x6

    if-lt v3, v9, :cond_a

    const/4 v3, 0x5

    .line 986
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 991
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v7, v0

    goto :goto_7

    :cond_9
    const/4 v7, 0x0

    const/16 v17, 0x0

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    .line 997
    :goto_7
    invoke-static {v5, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    if-eqz v17, :cond_b

    .line 6021
    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 1000
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    aget v5, v10, v0

    move-object/from16 v0, p0

    move-object v1, v4

    const/4 v9, 0x3

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, v16

    .line 1001
    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    goto :goto_8

    :cond_b
    const/4 v9, 0x3

    :goto_8
    const/4 v4, 0x0

    goto :goto_9

    :cond_c
    move-object/from16 v19, v12

    .line 1006
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eec

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "marker is not represented as list"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "AddMarkers"

    invoke-virtual {v0, v8, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v12, v19

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1010
    :cond_d
    invoke-static {v11}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public AddMarkersFromJson(Ljava/lang/String;)V
    .locals 26
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of markers that are represented as JsonArray.  The inner JsonObject represents a markerand is composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const-string v10, "draggable"

    const-string v11, "snippet"

    const-string v12, "title"

    const-string v13, "color"

    const-string v14, "AddMarkersFromJson"

    const-string v15, ","

    const-string v7, "lng"

    const-string v6, "lat"

    const-string v5, "GoogleMap"

    .line 1091
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    const/4 v1, 0x3

    new-array v3, v1, [F

    const/16 v16, 0x0

    .line 1097
    :try_start_0
    invoke-virtual {v0, v9}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 1098
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_e

    if-eqz v1, :cond_d

    .line 1099
    :try_start_1
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s a JsonArry: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 1105
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1106
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1107
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_c

    .line 1113
    :cond_0
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonPrimitive;

    .line 1114
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonPrimitive;
    :try_end_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1 .. :try_end_1} :catch_c

    const-wide/16 v19, 0x0

    .line 1122
    :try_start_2
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v21

    if-eqz v21, :cond_1

    .line 1123
    new-instance v9, Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_e

    move-object/from16 v21, v14

    :try_start_3
    const-string v14, "jpLat:"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "jpLng:"

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v14, v10

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1127
    :try_start_5
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v2}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v22, v14

    .line 1128
    :try_start_6
    new-instance v14, Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v23, v4

    :try_start_7
    const-string v4, "convert to double:"

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_1

    :catch_0
    move-object/from16 v23, v4

    goto :goto_3

    :catch_1
    move-object/from16 v23, v4

    move-object/from16 v22, v14

    goto :goto_2

    :catch_2
    move-object/from16 v23, v4

    move-object/from16 v22, v14

    goto :goto_4

    :catch_3
    move-object/from16 v17, v4

    move-object/from16 v3, v21

    goto/16 :goto_f

    :catch_4
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    goto :goto_4

    :cond_1
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    move-object/from16 v21, v14

    .line 1130
    :try_start_8
    invoke-virtual {v0, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v9
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1131
    :try_start_9
    invoke-virtual {v0, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v1
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9 .. :try_end_9} :catch_7

    :goto_1
    const/4 v4, 0x1

    goto :goto_6

    :catch_5
    :goto_2
    move-wide/from16 v1, v19

    :catch_6
    :goto_3
    move-wide/from16 v19, v9

    goto :goto_5

    :catch_7
    move-object/from16 v3, v21

    move-object/from16 v17, v23

    goto/16 :goto_f

    :catch_8
    move-object/from16 v23, v4

    move-object/from16 v22, v10

    move-object/from16 v21, v14

    :catch_9
    :goto_4
    move-wide/from16 v1, v19

    :goto_5
    move-wide/from16 v9, v19

    const/4 v4, 0x0

    :goto_6
    const-wide v19, -0x3fa9800000000000L    # -90.0

    cmpg-double v14, v9, v19

    if-ltz v14, :cond_2

    const-wide v19, 0x4056800000000000L    # 90.0

    cmpl-double v14, v9, v19

    if-gtz v14, :cond_2

    const-wide v19, -0x3f99800000000000L    # -180.0

    cmpg-double v14, v1, v19

    if-ltz v14, :cond_2

    const-wide v19, 0x4066800000000000L    # 180.0

    cmpl-double v14, v1, v19

    if-lez v14, :cond_3

    .line 1140
    :cond_2
    :try_start_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v14, "Lat/Lng wrong range:"

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 1145
    :cond_3
    iget v14, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:I

    invoke-static {v14, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v14, v3, v16

    .line 1147
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    if-nez v19, :cond_4

    goto :goto_7

    :cond_4
    invoke-virtual {v0, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v14

    int-to-float v14, v14

    :goto_7
    const/16 v19, 0x0

    cmpg-float v19, v14, v19

    if-ltz v19, :cond_5

    const/high16 v19, 0x43b40000    # 360.0f

    cmpl-float v19, v14, v19

    if-lez v19, :cond_6

    :cond_5
    const-string v4, "Wrong color"

    .line 1150
    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 1154
    :cond_6
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19
    :try_end_a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_a .. :try_end_a} :catch_b

    const-string v20, ""

    if-nez v19, :cond_7

    move-object/from16 v19, v20

    goto :goto_8

    :cond_7
    :try_start_b
    invoke-virtual {v0, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v19

    .line 1155
    :goto_8
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v24

    if-nez v24, :cond_8

    goto :goto_9

    :cond_8
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v20

    :goto_9
    move-object/from16 v24, v11

    move-object/from16 v11, v22

    .line 1156
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v22

    if-nez v22, :cond_9

    const/16 v22, 0x0

    goto :goto_a

    :cond_9
    invoke-virtual {v0, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    move/from16 v22, v0

    :goto_a
    if-eqz v4, :cond_a

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Adding marker"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7021
    sget-object v0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 1161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_b
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_b .. :try_end_b} :catch_b

    move-object/from16 v25, v5

    move-object/from16 v5, v23

    :try_start_c
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1162
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_c .. :try_end_c} :catch_a

    move-object/from16 v0, p0

    move-object v1, v9

    const/4 v9, 0x1

    move-object v10, v3

    move v3, v4

    move-object/from16 v17, v5

    move v4, v14

    move-object/from16 v14, v25

    move-object/from16 v5, v19

    move-object/from16 v19, v6

    move-object/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v22

    :try_start_d
    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    goto :goto_d

    :catch_a
    move-object/from16 v17, v5

    goto :goto_b

    :cond_a
    move-object v10, v3

    move-object v14, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v17, v23

    const/4 v9, 0x1

    goto :goto_d

    :catch_b
    move-object/from16 v17, v23

    :goto_b
    const/4 v9, 0x1

    goto :goto_e

    :cond_b
    :goto_c
    move-object/from16 v17, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v24, v11

    move-object/from16 v21, v14

    const/4 v9, 0x1

    move-object v14, v5

    move-object v11, v10

    move-object v10, v3

    :goto_d
    move-object/from16 v9, p1

    move-object v3, v10

    move-object v10, v11

    move-object v5, v14

    move-object/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v14, v21

    move-object/from16 v11, v24

    goto/16 :goto_0

    :cond_c
    move-object/from16 v17, v4

    goto :goto_11

    :catch_c
    move-object/from16 v17, v4

    const/4 v9, 0x1

    move-object v3, v14

    goto :goto_10

    :cond_d
    move-object/from16 v17, v4

    move-object/from16 v21, v14

    const/4 v9, 0x1

    .line 1170
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eec

    new-array v2, v9, [Ljava/lang/Object;

    const-string v3, "markers needs to be represented as JsonArray"

    aput-object v3, v2, v16
    :try_end_d
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_d .. :try_end_d} :catch_d

    move-object/from16 v3, v21

    :try_start_e
    invoke-virtual {v0, v8, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1172
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;
    :try_end_e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_e} :catch_f

    goto :goto_11

    :catch_d
    :goto_e
    move-object/from16 v3, v21

    goto :goto_10

    :catch_e
    move-object/from16 v17, v4

    move-object v3, v14

    :goto_f
    const/4 v9, 0x1

    .line 1176
    :catch_f
    :goto_10
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eee

    new-array v2, v9, [Ljava/lang/Object;

    aput-object p1, v2, v16

    invoke-virtual {v0, v8, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1178
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 1181
    :goto_11
    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

    return-void
.end method

.method public AddMarkersHue(Lcom/google/appinventor/components/runtime/util/YailList;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 21
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Adding a list of YailList for markers. The inner YailList represents a marker and is composed of lat(Double) [required], long(Double) [required], color(int)[in hue value ranging from 0-360], title(String), snippet(String), draggable(boolean). Return a list of unique ids for the markers that are added"
    .end annotation

    move-object/from16 v8, p0

    .line 1195
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1197
    invoke-virtual/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    array-length v11, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_d

    aget-object v0, v10, v13

    .line 1199
    instance-of v1, v0, Lcom/google/appinventor/components/runtime/util/YailList;

    const-string v2, "AddMarkersHue"

    const/16 v3, 0x2eec

    const/4 v4, 0x1

    if-eqz v1, :cond_c

    const-string v1, "GoogleMap"

    const-string v5, "Interior YailLiat"

    .line 1200
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    check-cast v0, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v5

    const/4 v6, 0x2

    const-string v7, "AddMarkers"

    if-ge v5, v6, :cond_0

    .line 1203
    iget-object v5, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v14, v4, [Ljava/lang/Object;

    const-string v15, "Need more than 2 inputs"

    aput-object v15, v14, v12

    invoke-virtual {v5, v8, v7, v3, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    .line 1210
    :goto_1
    invoke-virtual {v0, v12}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v14

    .line 1211
    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v15

    .line 1212
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v3, "Type: "

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v16, 0x0

    .line 1214
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 1215
    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 1218
    instance-of v4, v14, Lgnu/math/DFloNum;

    if-eqz v4, :cond_2

    instance-of v4, v15, Lgnu/math/DFloNum;

    if-nez v4, :cond_1

    goto :goto_2

    .line 1223
    :cond_1
    check-cast v14, Lgnu/math/DFloNum;

    invoke-virtual {v14}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1224
    check-cast v15, Lgnu/math/DFloNum;

    invoke-virtual {v15}, Lgnu/math/DFloNum;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_3

    .line 1219
    :cond_2
    :goto_2
    iget-object v4, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/Object;

    const-string v5, "Not a number for latitude or longitude"

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/16 v5, 0x2eec

    invoke-virtual {v4, v8, v2, v5, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move-object v4, v6

    move-object v6, v12

    const/4 v5, 0x0

    .line 1227
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v17, -0x3fa9800000000000L    # -90.0

    cmpg-double v12, v14, v17

    if-ltz v12, :cond_3

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v17, 0x4056800000000000L    # 90.0

    cmpl-double v12, v14, v17

    if-gtz v12, :cond_3

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v17, -0x3f99800000000000L    # -180.0

    cmpg-double v12, v14, v17

    if-ltz v12, :cond_3

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide v17, 0x4066800000000000L    # 180.0

    cmpl-double v12, v14, v17

    if-lez v12, :cond_4

    .line 1229
    :cond_3
    iget-object v5, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const-string v12, "Range for the latitude or longitude is wrong"

    const/4 v15, 0x0

    aput-object v12, v14, v15

    const/16 v12, 0x2eec

    invoke-virtual {v5, v8, v7, v12, v14}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v5, 0x0

    .line 8021
    :cond_4
    sget-object v12, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v12

    .line 1233
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1239
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v15

    const/4 v14, 0x3

    move/from16 v18, v5

    const-string v5, "Value: "

    if-lt v15, v14, :cond_6

    const/4 v15, 0x2

    .line 1241
    invoke-virtual {v0, v15}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v15

    .line 1242
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v10

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    instance-of v10, v15, Lgnu/math/IntNum;

    if-eqz v10, :cond_5

    .line 1246
    check-cast v15, Lgnu/math/IntNum;

    invoke-virtual {v15}, Lgnu/math/IntNum;->intValue()I

    move-result v2

    int-to-float v2, v2

    move/from16 v17, v2

    move/from16 v20, v11

    move/from16 v15, v18

    goto :goto_5

    .line 1249
    :cond_5
    iget-object v10, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    move/from16 v20, v11

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1250
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is not a number"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v11, v15

    const/16 v14, 0x2eec

    .line 1249
    invoke-virtual {v10, v8, v2, v14, v11}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v15, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v19, v10

    move/from16 v20, v11

    move/from16 v15, v18

    :goto_4
    const/high16 v17, 0x43700000    # 240.0f

    .line 1254
    :goto_5
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v10, 0x4

    const-string v11, ""

    if-lt v2, v10, :cond_7

    const/4 v2, 0x3

    .line 1255
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 1256
    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    .line 1257
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    move-object/from16 v18, v11

    move-object/from16 v14, v18

    .line 1261
    :goto_6
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v10, 0x5

    if-lt v2, v10, :cond_8

    const/4 v2, 0x4

    .line 1262
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    .line 1263
    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 1264
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v11

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_8
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v2

    const/4 v10, 0x6

    if-lt v2, v10, :cond_a

    const/4 v2, 0x5

    .line 1269
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 1275
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v7, v0

    goto :goto_7

    .line 1277
    :cond_9
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "marker not as a list"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0x2eec

    invoke-virtual {v0, v8, v7, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 v7, 0x0

    const/4 v15, 0x0

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    if-eqz v15, :cond_b

    .line 1284
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v2, v6

    move/from16 v4, v17

    move-object v5, v14

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Double;Ljava/lang/Double;IFLjava/lang/String;Ljava/lang/String;Z)I

    :cond_b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v19

    move/from16 v11, v20

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1289
    :cond_c
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Marker is not represented as list"

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x2eec

    invoke-virtual {v0, v8, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 1291
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0

    .line 1294
    :cond_d
    invoke-static {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public AddPolyline(Lcom/google/appinventor/components/runtime/util/YailList;FI)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This block will return the unique id of the new added polyline. Create a new polyline on the map. Use for \'points\' a list of lat, lng pairs. A integer for the \'width\' (in pixel) and a valid color for the \'color\' parameter."
    .end annotation

    .line 2060
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/PolylineOptions;->width(F)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object p1

    .line 12041
    sget-object p2, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    .line 2062
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p2
.end method

.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the API Key"
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 349
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-void
.end method

.method public BoundCamera(DDDD)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Transforms the camera such that the specified latitude/longitude bounds are centered on screen at the greatest possible zoom level. Need to specify both latitudes and longitudes for both northeast location and southwest location of the bounding box"
    .end annotation

    .line 1607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1608
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1609
    new-instance p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p1, p5, p6, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1610
    new-instance p2, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    const/4 p1, 0x0

    .line 1612
    invoke-static {p2, p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    .line 1613
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method public CameraAngle()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current tilt, the angle (in degrees) from the nadir (directly facing the Earth), of the map\'s camera."
    .end annotation

    .line 1989
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1990
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public CameraAngle(F)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified tilt, the angle (in degrees) from the nadir (directly facing the Earth). Must be a value between 0.0 and 90.0"
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1980
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    .line 1982
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Float;

    :cond_1
    return-void
.end method

.method public CameraPositionChanged(DDFFF)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called after the camera position of a map has changed."
    .end annotation

    move-object v9, p0

    .line 1540
    iget-object v10, v9, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v11, Lcom/google/appinventor/components/runtime/GoogleMap$12;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/GoogleMap$12;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DDFFF)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public CameraRotation()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current bearing, the direction that the camera is pointing in (in degrees clockwise from north), of the map\'s camera."
    .end annotation

    .line 2007
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public CameraRotation(F)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified bearing, the direction that the camera is pointing in (in degrees clockwise from north)."
    .end annotation

    .line 1998
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1999
    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    .line 2001
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Float;

    return-void
.end method

.method public CameraZoomLevel()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current zoom level of the map\'s camera."
    .end annotation

    .line 1937
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1938
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public CameraZoomLevel(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "15"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Move the map\'s camera to the specified zoom level."
    .end annotation

    .line 1928
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1929
    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void

    .line 1931
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

    return-void
.end method

.method public CompassEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the compass widget is currently enabled in the map ui"
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isCompassEnabled()Z

    move-result v0

    return v0
.end method

.method public EnableCompass(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the compass widget on the map\'s ui. Call this only after event \"MapIsReady\" is received"
    .end annotation

    .line 360
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    if-eqz v0, :cond_0

    .line 361
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Z

    .line 362
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    :cond_0
    return-void
.end method

.method public EnableMapCameraPosChangeListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s camera position changed event"
    .end annotation

    .line 861
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@EnableMapCameraPosChangeListener:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Z

    if-eq v0, p1, :cond_0

    .line 863
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Z

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 867
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "enable cameraChangedListener?:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    :cond_2
    return-void
.end method

.method public EnableMapClickListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/Disable to listen to map\'s click event"
    .end annotation

    .line 807
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@EnableMapClickListener:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

    if-eq v0, p1, :cond_0

    .line 809
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 812
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "enable map listener?: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    :cond_2
    return-void
.end method

.method public EnableMapLongClickListener(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable/disable to listen to map\'s long click event"
    .end annotation

    .line 834
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@EnableMapLongClickListener:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    if-eq v0, p1, :cond_0

    .line 836
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_2

    .line 839
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "enable long click listener?:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapLongClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapLongClickListener;)V

    :cond_2
    return-void
.end method

.method public EnableMyLocation(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable or disable my location widget control for Google Map. One can call GetMyLocation() to obtain the current location after enable this.\""
    .end annotation

    .line 701
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->havePermission:Z

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$6;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 723
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Z)V

    return-void
.end method

.method public EnableRotate(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to rotate a map on the ui. Call this only after the event \"MapIsReady\" is received."
    .end annotation

    .line 374
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    if-eqz v0, :cond_0

    .line 375
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Z

    .line 376
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public EnableScroll(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the capability to scroll a map on the ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .line 388
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    if-eqz v0, :cond_0

    .line 389
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    .line 390
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public EnableZoomControl(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables the zoom widget on the map\'s ui. Call this only after the event \"MapIsReady\" is received"
    .end annotation

    .line 402
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

    .line 403
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    return-void
.end method

.method public EnableZoomGesture(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enables/disables zoom gesture on the map ui. Call this only after the event  \"MapIsReady\" is received. "
    .end annotation

    .line 414
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    if-eqz v0, :cond_0

    .line 415
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

    .line 416
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    :cond_0
    return-void
.end method

.method public FinishedDraggingCircle(IDDD)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event been raised after the action of moving a draggable circle is finished. Possible a user drag the center of the circle or drag the radius marker of the circle"
    .end annotation

    move-object v9, p0

    .line 628
    iget-object v10, v9, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v11, Lcom/google/appinventor/components/runtime/GoogleMap$1;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/appinventor/components/runtime/GoogleMap$1;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDDD)V

    invoke-virtual {v10, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetAllCircleIDs()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all circles Ids. A short cut to get all the references for the eixisting circles"
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetAllMarkerID()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get all the existing markers\'s Ids"
    .end annotation

    .line 1344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Collection;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetAllPolylineIds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "This will return a list with all available polyline id\'s."
    .end annotation

    .line 2117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/Set;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetMarkers()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a list of markers composed of name-value pairs. Name fields for a marker are: \"lat\" (type double) [required], \"lng\"(type double) [required], \"color\"(type int)[in hue value ranging from 0~360], \"title\"(type String), \"snippet\"(type String), \"draggable\"(type boolean)"
    .end annotation

    .line 1081
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public GetMyLocation()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get current location using Google Map Service. Return a YailList with first item beingthe latitude, the second item being the longitude, and last time being the accuracy of the reading."
    .end annotation

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GoogleMap"

    const-string v2, "client is connected"

    .line 761
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 763
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public GetPointsFromJson(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Convert a JsonArray of points (lat, lng pairs) to a list."
    .end annotation

    .line 2047
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2048
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2049
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2050
    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2052
    :cond_0
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 272
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public InfoWindowClicked(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the marker\'s infowindow is clicked, returning marker\'s id"
    .end annotation

    .line 1472
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$11;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$11;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public MapCameraChangedListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map camera\'s position changed listener is currently enabled"
    .end annotation

    .line 879
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->xaqHe1zmXpFIxCQ2Rqyod5yEaSTeb7CYPqkTrZecvYFjGogfgX23htIKbmu7xARG:Z

    return v0
.end method

.method public MapClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the mapClick event listener is currently enabled"
    .end annotation

    .line 824
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Z

    return v0
.end method

.method public MapIsReady()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the map has been rendered and ready for adding markers or changing other settings. Please add or updating markers within this event"
    .end annotation

    const-string v0, "GoogleMap"

    const-string v1, "Map is ready for adding markers and other setting"

    .line 428
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 430
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->eQeQhiSmlElGLbwx31fXfv53XsxBlAuCtzOUdhRtXefyKZkKyhRMzOCKSg7WR08:Z

    .line 431
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MapIsReady"

    .line 432
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public MapLongClickListenerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates if the map longClick listener is currently enabled"
    .end annotation

    .line 851
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->KmWMzrb8pAMl652ZF8qeuTq7pG7ZDLw36UnzkrmNxV5DvooPwgtf6GDSAEiAO9jG:Z

    return v0
.end method

.method public MapType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates the current map type"
    .end annotation

    .line 884
    iget v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "hybrid"

    return-object v0

    :cond_1
    const-string v0, "terrain"

    return-object v0

    :cond_2
    const-string v0, "satellite"

    return-object v0

    :cond_3
    const-string v0, "normal"

    return-object v0
.end method

.method public MoveCamera(DDF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the map\'s camera to the specified position and zoom level"
    .end annotation

    .line 1590
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1591
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1, p5}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 1592
    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p5

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

    .line 1593
    new-instance p5, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/LatLng;

    :cond_0
    return-void
.end method

.method public MyLocationEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether my locaiton UI control is currently enabled for the Google map."
    .end annotation

    .line 751
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:Z

    return v0
.end method

.method public OnLocationChanged(DD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers this event when user location has changed. Only works when EnableMylocation is set to true"
    .end annotation

    .line 1763
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$4;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/GoogleMap$4;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMapClick(DD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a tap gesture on the map"
    .end annotation

    .line 1579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$3;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/GoogleMap$3;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMapLongClick(DD)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user makes a long-press gesture on the map"
    .end annotation

    .line 1562
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/GoogleMap$2;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/GoogleMap$2;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;DD)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerClick(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is clicked"
    .end annotation

    .line 1462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/GoogleMap$10;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$10;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDrag(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker is been dragged"
    .end annotation

    .line 1440
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/GoogleMap$8;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$8;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDragEnd(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the user drags a marker and finish the action, returning marker\'s id and it\'s latest position"
    .end annotation

    .line 1452
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/GoogleMap$9;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$9;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnMarkerDragStart(IDD)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When a marker starts been dragged"
    .end annotation

    .line 1430
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/Activity;

    new-instance v8, Lcom/google/appinventor/components/runtime/GoogleMap$7;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap$7;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;IDD)V

    invoke-virtual {v0, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnPointOfInterestClick(DDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event will be invoked when a user clicks on a point of interest. This can be a shop, coffee-bar or else."
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 2021
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p5, v0, p1

    const/4 p1, 0x3

    aput-object p6, v0, p1

    const-string p1, "OnPointOfInterestClick"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveCircle(I)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a circle for the map. Returns true if successfully removed, false if the circle does not exist with the specified id"
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 529
    :cond_0
    instance-of v0, p1, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    if-eqz v0, :cond_1

    .line 530
    move-object v0, p1

    check-cast v0, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 4691
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 4692
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 4693
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 531
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 533
    :cond_1
    instance-of v0, p1, Lcom/google/android/gms/maps/model/Circle;

    if-eqz v0, :cond_2

    .line 534
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/maps/model/Circle;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    .line 536
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public RemoveMarker(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove a marker from the map"
    .end annotation

    .line 1361
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    :cond_0
    return-void
.end method

.method public RemovePolyline(I)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to remove a polyline from the map. It will return true if it was successful."
    .end annotation

    .line 2068
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_0

    .line 2070
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Polyline;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public RotateEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to rotate a map on the ui is currently enabled"
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isRotateGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public ScrollEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the capability to scroll a map on the ui is currently enabled"
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public SetMapType(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the layer of Google map. Default layer is \"normal\", other choices including \"hybrid\",\"satellite\", and \"terrain\" "
    .end annotation

    .line 775
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "normal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "hybrid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "terrain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "satellite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 789
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error setting layer with name "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2eec

    new-array v2, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not the correct type"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "SetMapType"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 777
    :pswitch_0
    iput v4, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x4

    .line 780
    iput p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    goto :goto_1

    .line 786
    :pswitch_2
    iput v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    goto :goto_1

    .line 783
    :pswitch_3
    iput v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    .line 795
    :goto_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_4

    .line 796
    iget v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->PnDqXmvCFreSiRVUA0g9XAstwDhIMcbRjkGmb4HpU47gHx12PSApiyWiV1UWvlkR:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    :cond_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e1f36c5 -> :sswitch_3
        -0x54d7eccb -> :sswitch_2
        -0x47b09e04 -> :sswitch_1
        -0x3df94319 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Style(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the style of the map from json. Just use a text field and paste there the json data. Create a custom map style at https://mapstyle.withgoogle.com/. Set the theme to \"standard\" to clear the style json."
    .end annotation

    .line 1966
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 1967
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

    return-void

    .line 1968
    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/MapStyleOptions;

    invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "custom"

    .line 1969
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Ljava/lang/String;

    return-void

    .line 1971
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2ef3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "SetStyle"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public Theme()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the theme of the map. The choices are \"standard\"(default), \"silver\", \"retro\", \"dark\", \"night\", \"aubergine\", \"vintage\", \"kodular\" and \"roads-only\". Returns \"custom\" if the style of the map has been set from json."
    .end annotation

    .line 1961
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Ljava/lang/String;

    return-object v0
.end method

.method public Theme(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "standard"
        editorType = "google_map_theme"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the theme of the map. The choices are \"standard\"(default), \"silver\", \"retro\", \"dark\", \"night\", \"aubergine\", \"vintage\", \"kodular\" and \"roads-only\"."
    .end annotation

    if-eqz p1, :cond_3

    .line 1947
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-nez v0, :cond_0

    .line 1948
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    return-void

    .line 1949
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/util/GoogleMapStyleOptions;->JSON_BY_THEME:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 1950
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2ef4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "SetTheme"

    invoke-virtual {v0, p0, p1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 1951
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v3, Lcom/google/android/gms/maps/model/MapStyleOptions;

    sget-object v4, Lcom/google/appinventor/components/runtime/util/GoogleMapStyleOptions;->JSON_BY_THEME:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/google/android/gms/maps/model/MapStyleOptions;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapStyle(Lcom/google/android/gms/maps/model/MapStyleOptions;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1952
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Ljava/lang/String;

    return-void

    .line 1954
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2ef3

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "(theme)"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "SetStyle"

    invoke-virtual {v0, p0, p1, v3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public UpdateCircle(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of an existing circle. Properties include: \"alpha\"(number, value ranging from 0~255), \"color\" (nimber, hue value ranging 0~360), \"radius\"(number in meters)"
    .end annotation

    .line 546
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_6

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inputs: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 549
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "UpdateCircle"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    .line 553
    instance-of p1, v2, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    if-eqz p1, :cond_0

    .line 554
    move-object p1, v2

    check-cast p1, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 4705
    iget-object v3, p1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Circle;

    .line 556
    :cond_0
    instance-of p1, v2, Lcom/google/android/gms/maps/model/Circle;

    if-eqz p1, :cond_1

    .line 557
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/maps/model/Circle;

    .line 560
    :cond_1
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    const-string v7, "alpha"

    .line 561
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 563
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v7

    .line 564
    invoke-static {v7, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 565
    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result v7

    .line 567
    invoke-static {v7, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    .line 568
    invoke-virtual {v3, v1}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    :cond_2
    const-string v1, "color"

    .line 571
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 572
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/Circle;->getFillColor()I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    new-array v0, v0, [F

    .line 574
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v0, v5

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v0, v6

    const/4 v8, 0x2

    aput v7, v0, v8

    invoke-static {v1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    .line 575
    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/model/Circle;->setFillColor(I)V

    :cond_3
    const-string v0, "radius"

    .line 578
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 581
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/maps/model/Circle;->setRadius(D)V

    .line 583
    instance-of p2, v2, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    if-eqz p2, :cond_4

    .line 585
    move-object p2, v2

    check-cast p2, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 5697
    iget-object p2, p2, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 586
    move-object v0, v2

    check-cast v0, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 5701
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 587
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->remove()V

    .line 588
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    .line 589
    invoke-virtual {p2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v7, p1

    invoke-static {p2, v7, v8}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/LatLng;D)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 590
    invoke-virtual {p1, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->draggable(Z)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 p2, 0x43520000    # 210.0f

    .line 591
    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object p1

    .line 588
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 594
    check-cast v2, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 5713
    iput-object p1, v2, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    .line 599
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x2eec

    new-array v0, v6, [Ljava/lang/Object;

    .line 600
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v0, v5

    .line 599
    invoke-virtual {p1, p0, v4, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 606
    :cond_5
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x2eef

    new-array v0, v6, [Ljava/lang/Object;

    .line 607
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    .line 606
    invoke-virtual {p2, p0, v4, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_6
    return-void
.end method

.method public UpdateMarker(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the property of a marker, note that the marker has to be added first or else will throw an exception! Properties include: \"color\"(hue value ranging from 0~360), \"title\", \"snippet\", \"draggable\"(give either true or false as the value)."
    .end annotation

    .line 1304
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1305
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GoogleMap"

    const-string v3, "@UpdateMarker"

    .line 1307
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "markerId:"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "prop:"

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "value:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Lcom/google/android/gms/maps/model/Marker;

    move-result-object p1

    .line 1312
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "marker?:"

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    const-string p2, "color"

    .line 1316
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "we are changing color"

    .line 1317
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p2

    .line 1319
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/4 v3, 0x0

    cmpg-float p3, p3, v3

    if-ltz p3, :cond_1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p3

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float p3, p3, v3

    if-lez p3, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p2}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_1

    .line 1320
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2eec

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1321
    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v5

    const-string p2, "UpdateMarker"

    .line 1320
    invoke-virtual {p3, p0, p2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    const-string p2, "title"

    .line 1327
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "we are changing title"

    .line 1328
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setTitle(Ljava/lang/String;)V

    :cond_3
    const-string p2, "snippet"

    .line 1331
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "we are changing snippet"

    .line 1332
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/Marker;->setSnippet(Ljava/lang/String;)V

    :cond_4
    const-string p2, "draggable"

    .line 1335
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "we are changing draggable"

    .line 1336
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/maps/model/Marker;->setDraggable(Z)V

    :cond_5
    return-void
.end method

.method public UpdatePolyline(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update any polyline with the given id. You can change the property values for \'width\' (in pixel), \'color\' or \'points (a list of lat, lng pairs)."
    .end annotation

    .line 2079
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/model/Polyline;

    if-eqz p1, :cond_3

    .line 2081
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "width"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "color"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "points"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-string p2, "GoogleMap"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2096
    :pswitch_0
    :try_start_0
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    .line 2097
    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/Polyline;->setWidth(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2099
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2105
    :pswitch_1
    :try_start_1
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    .line 2106
    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/Polyline;->setColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 2108
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2085
    :pswitch_2
    :try_start_2
    check-cast p3, Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/YailList;)Ljava/util/List;

    move-result-object p3

    .line 2087
    invoke-virtual {p1, p3}, Lcom/google/android/gms/maps/model/Polyline;->setPoints(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 2090
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3a93a31d -> :sswitch_2
        0x5a72f63 -> :sswitch_1
        0x6be2dc6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 264
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public ZoomControlEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom widget on the map ui is currently enabled"
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomControlsEnabled()Z

    move-result v0

    return v0
.end method

.method public ZoomGestureEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Indicates whether the zoom gesture is currently enabled"
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/UiSettings;->isZoomGesturesEnabled()Z

    move-result v0

    return v0
.end method

.method public addOverlay()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add overlay."
    .end annotation

    .line 1870
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1871
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v1, 0x40445b672b884407L    # 40.714086

    const-wide v3, -0x3fad715d074213a1L    # -74.228697

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 1872
    new-instance v1, Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;-><init>()V

    const v2, 0x46066000    # 8600.0f

    const v3, 0x45cb2000    # 6500.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/maps/model/GroundOverlayOptions;->position(Lcom/google/android/gms/maps/model/LatLng;FF)Lcom/google/android/gms/maps/model/GroundOverlayOptions;

    move-result-object v0

    .line 1873
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addGroundOverlay(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/GroundOverlay;

    :cond_0
    return-void
.end method

.method public addPolygon(DDDD)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "A Polygon is an enclosed shape that can be used to mark areas on the map."
    .end annotation

    .line 1773
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1774
    new-instance v0, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/gms/maps/model/LatLng;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v3, p1, p2, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v3, v1, v2

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v2, p3, p4, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v4, p3, p4, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v4, v1, v2

    const/4 p3, 0x3

    new-instance p4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p4, p1, p2, p5, p6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object p4, v1, p3

    const/4 p3, 0x4

    new-instance p4, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {p4, p1, p2, p7, p8}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object p4, v1, p3

    .line 1775
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object p1

    .line 1782
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object p1

    .line 1783
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addTileOverlay()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add title overlay."
    .end annotation

    .line 1879
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1880
    new-instance v0, Lcom/google/appinventor/components/runtime/GoogleMap$5;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/GoogleMap$5;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap;)V

    .line 1912
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v2, Lcom/google/android/gms/maps/model/TileOverlayOptions;

    invoke-direct {v2}, Lcom/google/android/gms/maps/model/TileOverlayOptions;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/model/TileOverlayOptions;->tileProvider(Lcom/google/android/gms/maps/model/TileProvider;)Lcom/google/android/gms/maps/model/TileOverlayOptions;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->addTileOverlay(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/TileOverlay;

    :cond_0
    return-void
.end method

.method public clearAllPolygons()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear all Polygons."
    .end annotation

    .line 1789
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1790
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polygon;

    .line 1791
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawCentralSquare()V
    .locals 17
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Draw central square."
    .end annotation

    move-object/from16 v0, p0

    .line 1797
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 1798
    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 1800
    iget-object v2, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    .line 1801
    iget-object v1, v1, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    .line 1803
    iget-wide v3, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1804
    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1806
    iget-wide v2, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1807
    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 1810
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 1811
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double v1, v6, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v10

    sub-double v3, v8, v4

    mul-double v3, v3, v10

    .line 1820
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "[{lat:"

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, ",lng:"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v10, "}]"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/appinventor/components/runtime/GoogleMap;->AddMarkersFromJson(Ljava/lang/String;)V

    .line 1822
    new-instance v5, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    const/4 v10, 0x5

    new-array v10, v10, [Lcom/google/android/gms/maps/model/LatLng;

    const/4 v11, 0x0

    new-instance v12, Lcom/google/android/gms/maps/model/LatLng;

    add-double v13, v6, v1

    move-wide v15, v1

    add-double v0, v8, v3

    invoke-direct {v12, v13, v14, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v12, v10, v11

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    sub-double/2addr v6, v15

    invoke-direct {v2, v6, v7, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    const/4 v11, 0x1

    aput-object v2, v10, v11

    const/4 v2, 0x2

    new-instance v12, Lcom/google/android/gms/maps/model/LatLng;

    sub-double/2addr v8, v3

    invoke-direct {v12, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v12, v10, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v3, v13, v14, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v3, v10, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v3, v13, v14, v0, v1}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    aput-object v3, v10, v2

    .line 1823
    invoke-virtual {v5, v10}, Lcom/google/android/gms/maps/model/PolygonOptions;->add([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1830
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    move-result-object v0

    .line 1831
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-void
.end method

.method public getBoundingBox(DDD)Ljava/lang/String;
    .locals 16
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get bounding box."
    .end annotation

    .line 1844
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 1845
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, p5

    .line 1851
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    const-wide v8, 0x42c27fd94c2fb880L    # 4.0680631590769E13

    mul-double v6, v6, v8

    .line 1852
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide v10, 0x42c260252d89d1a5L    # 4.040829980355529E13

    mul-double v8, v8, v10

    .line 1853
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    const-wide v12, 0x415854a640000000L    # 6378137.0

    mul-double v10, v10, v12

    .line 1854
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    const-wide v14, 0x41583fc413333333L    # 6356752.3

    mul-double v12, v12, v14

    mul-double v6, v6, v6

    mul-double v8, v8, v8

    add-double/2addr v6, v8

    mul-double v10, v10, v10

    mul-double v12, v12, v12

    add-double/2addr v10, v12

    div-double/2addr v6, v10

    .line 1855
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 1858
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double v8, v8, v6

    div-double v6, v4, v6

    sub-double v10, v0, v6

    add-double/2addr v0, v6

    div-double/2addr v4, v8

    sub-double v6, v2, v4

    add-double/2addr v2, v4

    .line 1865
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMapCenter()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get map center. If a error occures the output will be \'-999\'."
    .end annotation

    .line 1918
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    .line 1919
    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    .line 1920
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/LatLng;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "-999"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getZoomLevelInfo()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deprecated block! Don\'t use this anymore. Use instead \'Camera Zoom Level\'."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2016
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->CameraZoomLevel()F

    move-result v0

    return v0
.end method

.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 12

    .line 1520
    iget-object v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 1521
    iget-object v1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->target:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1522
    iget v2, p1, Lcom/google/android/gms/maps/model/CameraPosition;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 1523
    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->tilt:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 1524
    iget p1, p1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1525
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/google/appinventor/components/runtime/GoogleMap;->CameraPositionChanged(DDFFF)V

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2

    const-string p1, "GoogleMap"

    const-string v0, "onConnected to location listener....."

    .line 1737
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    sget-object p1, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    sget-object v1, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/location/LocationRequest;

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method public onDisconnected()V
    .locals 0

    return-void
.end method

.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 1

    .line 1482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 1483
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->InfoWindowClicked(I)V

    return-void
.end method

.method public onInitialize()V
    .locals 1

    const/4 v0, 0x1

    .line 660
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->XkTExsgDjzL7UIaxQorrmSTr7jZbDxCmXSVfTpg7zAbwFxeOpcI2x1hAyx12QFiS:Z

    .line 661
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->MapIsReady()V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 1758
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnLocationChanged(DD)V

    return-void
.end method

.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    const-string v0, "GoogleMap"

    const-string v1, "receive google maps\'s onMapClick"

    .line 1572
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMapClick(DD)V

    return-void
.end method

.method public onMapLongClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 1551
    iget-wide v0, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMapLongClick(DD)V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    const-string v0, "GoogleMap"

    const-string v1, "Yes, we have a google map..."

    .line 286
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 287
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Z

    .line 288
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    .line 3304
    new-instance p1, Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;-><init>(Lcom/google/android/gms/maps/model/CameraPosition;)V

    .line 3305
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v1, :cond_0

    .line 3306
    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->target(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 3308
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 3309
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->zoom(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 3311
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 3312
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->tilt(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 3314
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 3315
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->bearing(F)Lcom/google/android/gms/maps/model/CameraPosition$Builder;

    .line 3317
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/CameraPosition$Builder;->build()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 3318
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SHSZV5sTay8ykRHafXU624sH0bmI6VeYHAe3FtLV8LV4djzabBBIyQGaIvRsAwmk:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 3319
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->Style(Ljava/lang/String;)V

    goto :goto_0

    .line 3320
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->SzducuiMqWJn2qdHTwu7wT0uVCkk0nPPJy3Na6C8gzyeOLBidRCWmYhIkQdo5gq3:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->HBxetIRrPp5wFSU0fYFDhqCxdFt0fBh3kY2YtziyusOgRcjzKRD45EhStHcUhuz0:Ljava/lang/String;

    if-eq p1, v1, :cond_5

    .line 3321
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GoogleMap;->Theme(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-string p1, "in setUpMap()"

    .line 3326
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 3329
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 3330
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerDragListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;)V

    .line 3331
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/GoogleMap;->setOnPoiClickListener(Lcom/google/android/gms/maps/GoogleMap$OnPoiClickListener;)V

    .line 3334
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    .line 3335
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->OAUx2n1xMKzXfjTj5DCb1XzhEYBfmj7wvFgBr5BSQUCav1CowwMbt2iKFNQwGzpG:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 3336
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 3337
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setScrollGesturesEnabled(Z)V

    .line 3338
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 3339
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/UiSettings;

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->muMCPHZoR5LDcgNaOoyYPcH1tjqU9LHoHV7Yzgex9Dj2uE6xbcPRtlEMsWbJpsbN:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->setZoomGesturesEnabled(Z)V

    .line 3343
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->MapIsReady()V

    return-void
.end method

.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 7

    .line 1488
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1489
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    .line 1490
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-wide v3, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v5, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerClick(IDD)V

    const/4 p1, 0x0

    return p1
.end method

.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 8

    .line 1372
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dragging M:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoogleMap"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1376
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1377
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDrag(IDD)V

    .line 1381
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 8697
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1382
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 8701
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 1382
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1383
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 11

    .line 1390
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1394
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDragEnd(IDD)V

    .line 1398
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 9697
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1399
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 9701
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 1399
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1400
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/Marker;)Z

    .line 1402
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 10697
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1403
    invoke-virtual {v2}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 1404
    iget-wide v5, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v7, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 10709
    iget-wide v9, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:D

    move-object v3, p0

    .line 1404
    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/GoogleMap;->FinishedDraggingCircle(IDDD)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 8

    .line 1412
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 1415
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnMarkerDragStart(IDD)V

    .line 1419
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;

    .line 11697
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/maps/model/Marker;

    .line 1420
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 11701
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/GoogleMap$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/maps/model/Marker;

    .line 1420
    invoke-virtual {v2, p1}, Lcom/google/android/gms/maps/model/Marker;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1421
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/GoogleMap$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/android/gms/maps/model/Marker;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "GoogleMap"

    const-string v1, "OnPause, remote LocationClient"

    .line 1749
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_0

    const-string v1, "before location client disconnect"

    .line 1751
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public onPoiClick(Lcom/google/android/gms/maps/model/PointOfInterest;)V
    .locals 8

    if-eqz p1, :cond_0

    .line 2027
    iget-object v0, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-object v0, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->latLng:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-object v6, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->name:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/gms/maps/model/PointOfInterest;->placeId:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/GoogleMap;->OnPointOfInterestClick(DDLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "GoogleMap"

    const-string v1, "in onResume...Google Map redraw"

    .line 649
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->joZZFkzhsHdrkrd2PnThIkJfOfuAzcTTVQ9uzSCPDoVjmnvQXSliAgIhSj7yEkSN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    .line 652
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j()V

    .line 653
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/GoogleMap;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT()V

    return-void
.end method
