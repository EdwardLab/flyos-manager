.class public Lcom/google/appinventor/components/runtime/MemoryInfo;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->DEPRECATED:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/devicetools.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private final context:Landroid/content/Context;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-wide/32 v0, 0x100000

    .line 39
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:J

    .line 49
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MemoryInfo;->context:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MemoryInfo;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 8

    .line 134
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 135
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 137
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    .line 139
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    mul-long v4, v4, v2

    const-wide/32 v6, 0x100000

    .line 140
    div-long/2addr v4, v6

    mul-long v0, v0, v2

    .line 141
    div-long/2addr v0, v6

    sub-long v2, v0, v4

    .line 144
    sget-object v6, Lcom/google/appinventor/components/runtime/MemoryInfo$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result p0

    aget p0, v6, p0

    const/4 v6, 0x4

    const/high16 v7, 0x447a0000    # 1000.0f

    if-eq p0, v6, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    long-to-float p0, v2

    :goto_0
    div-float/2addr p0, v7

    return p0

    :cond_1
    long-to-float p0, v4

    goto :goto_0

    :cond_2
    long-to-float p0, v0

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 11

    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MemoryInfo;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 107
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v3, v0

    .line 109
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v5, v0

    .line 110
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v7, v0

    mul-long v5, v5, v3

    const-wide/32 v9, 0x100000

    .line 112
    div-long/2addr v5, v9

    mul-long v7, v7, v3

    .line 113
    div-long/2addr v7, v9

    sub-long v2, v5, v7

    .line 116
    sget-object v0, Lcom/google/appinventor/components/runtime/MemoryInfo$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    long-to-float p1, v2

    :goto_0
    div-float/2addr p1, v4

    return p1

    :cond_2
    long-to-float p1, v7

    goto :goto_0

    :cond_3
    long-to-float p1, v5

    goto :goto_0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F
    .locals 8

    .line 157
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MemoryInfo;->context:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 159
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 161
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    .line 162
    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    div-long/2addr v5, v3

    sub-long v3, v5, v1

    .line 164
    sget-object v0, Lcom/google/appinventor/components/runtime/MemoryInfo$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[I

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    const/high16 v7, 0x447a0000    # 1000.0f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    long-to-float p1, v3

    :goto_0
    div-float/2addr p1, v7

    return p1

    :cond_1
    long-to-float p1, v1

    goto :goto_0

    :cond_2
    long-to-float p1, v5

    goto :goto_0
.end method


# virtual methods
.method public ExternalStorageAvailable()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Available size of external storage in Gigabytes."
    .end annotation

    .line 77
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public ExternalStorageTotal()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total external storage size in Gigabytes."
    .end annotation

    .line 72
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public ExternalStorageUsed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of used-external-storage in Gigabytes."
    .end annotation

    .line 82
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->EXTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public InternalStorageAvailable()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of available internal storage in Gigabytes."
    .end annotation

    .line 93
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public InternalStorageTotal()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total size of internal storage in Gigabytes."
    .end annotation

    .line 88
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public InternalStorageUsed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of used-internal-storage in Gigabytes."
    .end annotation

    .line 98
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->INTERNAL_STORAGE_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public MemoryFree()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total free RAM size in Gigabytes."
    .end annotation

    .line 61
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_AVAILABLE:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public MemoryTotal()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Total RAM size in Gigabytes."
    .end annotation

    .line 56
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_TOTAL:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method

.method public MemoryUsed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Size of used-memory in Gigabytes."
    .end annotation

    .line 66
    sget-object v0, Lcom/google/appinventor/components/runtime/util/DeviceStorage;->MEMORY_USED:Lcom/google/appinventor/components/runtime/util/DeviceStorage;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/MemoryInfo;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/util/DeviceStorage;)F

    move-result v0

    return v0
.end method
