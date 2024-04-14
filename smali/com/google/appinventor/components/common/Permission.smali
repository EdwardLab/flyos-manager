.class public final enum Lcom/google/appinventor/components/common/Permission;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/common/OptionList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/appinventor/components/common/Permission;",
        ">;",
        "Lcom/google/appinventor/components/common/OptionList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AccountManager:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Audio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Bluetooth:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BluetoothAdvertise:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothConnect:Lcom/google/appinventor/components/common/Permission;

.field public static final enum BluetoothScan:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Camera:Lcom/google/appinventor/components/common/Permission;

.field public static final enum CoarseLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum FineLocation:Lcom/google/appinventor/components/common/Permission;

.field public static final enum GetAccounts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum Internet:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ManageAccounts:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MockLocation:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NetworkState:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ReadContacts:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaAudio:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaImages:Lcom/google/appinventor/components/common/Permission;

.field public static final enum ReadMediaVideo:Lcom/google/appinventor/components/common/Permission;

.field public static final enum UseCredentials:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum Vibrate:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WifiState:Lcom/google/appinventor/components/common/Permission;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

.field private static final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/Permission;


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 15
    new-instance v0, Lcom/google/appinventor/components/common/Permission;

    const-string v1, "CoarseLocation"

    const/4 v2, 0x0

    const-string v3, "ACCESS_COARSE_LOCATION"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->CoarseLocation:Lcom/google/appinventor/components/common/Permission;

    .line 16
    new-instance v1, Lcom/google/appinventor/components/common/Permission;

    const-string v3, "FineLocation"

    const/4 v4, 0x1

    const-string v5, "ACCESS_FINE_LOCATION"

    invoke-direct {v1, v3, v4, v5}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/appinventor/components/common/Permission;->FineLocation:Lcom/google/appinventor/components/common/Permission;

    .line 17
    new-instance v3, Lcom/google/appinventor/components/common/Permission;

    const-string v5, "MockLocation"

    const/4 v6, 0x2

    const-string v7, "ACCESS_MOCK_LOCATION"

    invoke-direct {v3, v5, v6, v7}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/google/appinventor/components/common/Permission;->MockLocation:Lcom/google/appinventor/components/common/Permission;

    .line 19
    new-instance v5, Lcom/google/appinventor/components/common/Permission;

    const-string v7, "LocationExtraCommands"

    const/4 v8, 0x3

    const-string v9, "ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-direct {v5, v7, v8, v9}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/google/appinventor/components/common/Permission;->LocationExtraCommands:Lcom/google/appinventor/components/common/Permission;

    .line 20
    new-instance v7, Lcom/google/appinventor/components/common/Permission;

    const-string v9, "ReadExternalStorage"

    const/4 v10, 0x4

    const-string v11, "READ_EXTERNAL_STORAGE"

    invoke-direct {v7, v9, v10, v11}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/google/appinventor/components/common/Permission;->ReadExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 21
    new-instance v9, Lcom/google/appinventor/components/common/Permission;

    const-string v11, "WriteExternalStorage"

    const/4 v12, 0x5

    const-string v13, "WRITE_EXTERNAL_STORAGE"

    invoke-direct {v9, v11, v12, v13}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/google/appinventor/components/common/Permission;->WriteExternalStorage:Lcom/google/appinventor/components/common/Permission;

    .line 22
    new-instance v11, Lcom/google/appinventor/components/common/Permission;

    const-string v13, "Camera"

    const/4 v14, 0x6

    const-string v15, "CAMERA"

    invoke-direct {v11, v13, v14, v15}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/google/appinventor/components/common/Permission;->Camera:Lcom/google/appinventor/components/common/Permission;

    .line 23
    new-instance v13, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "Audio"

    const/4 v14, 0x7

    const-string v12, "RECORD_AUDIO"

    invoke-direct {v13, v15, v14, v12}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/google/appinventor/components/common/Permission;->Audio:Lcom/google/appinventor/components/common/Permission;

    .line 24
    new-instance v12, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "Vibrate"

    const/16 v14, 0x8

    const-string v10, "VIBRATE"

    invoke-direct {v12, v15, v14, v10}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/google/appinventor/components/common/Permission;->Vibrate:Lcom/google/appinventor/components/common/Permission;

    .line 26
    new-instance v10, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "Internet"

    const/16 v14, 0x9

    const-string v8, "INTERNET"

    invoke-direct {v10, v15, v14, v8}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/google/appinventor/components/common/Permission;->Internet:Lcom/google/appinventor/components/common/Permission;

    .line 28
    new-instance v8, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "NearFieldCommunication"

    const/16 v14, 0xa

    const-string v6, "NFC"

    invoke-direct {v8, v15, v14, v6}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/google/appinventor/components/common/Permission;->NearFieldCommunication:Lcom/google/appinventor/components/common/Permission;

    .line 30
    new-instance v6, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "Bluetooth"

    const/16 v14, 0xb

    const-string v4, "BLUETOOTH"

    invoke-direct {v6, v15, v14, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/google/appinventor/components/common/Permission;->Bluetooth:Lcom/google/appinventor/components/common/Permission;

    .line 32
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "BluetoothAdmin"

    const/16 v14, 0xc

    const-string v2, "BLUETOOTH_ADMIN"

    invoke-direct {v4, v15, v14, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->BluetoothAdmin:Lcom/google/appinventor/components/common/Permission;

    .line 34
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "WifiState"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "ACCESS_WIFI_STATE"

    invoke-direct {v2, v15, v14, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->WifiState:Lcom/google/appinventor/components/common/Permission;

    .line 36
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "NetworkState"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "ACCESS_NETWORK_STATE"

    invoke-direct {v4, v15, v14, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->NetworkState:Lcom/google/appinventor/components/common/Permission;

    .line 38
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "AccountManager"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "ACCOUNT_MANAGER"

    invoke-direct {v2, v15, v14, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->AccountManager:Lcom/google/appinventor/components/common/Permission;

    .line 40
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "ManageAccounts"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "MANAGE_ACCOUNTS"

    invoke-direct {v4, v15, v14, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->ManageAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 42
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "GetAccounts"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "GET_ACCOUNTS"

    invoke-direct {v2, v15, v14, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->GetAccounts:Lcom/google/appinventor/components/common/Permission;

    .line 43
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "ReadContacts"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "READ_CONTACTS"

    invoke-direct {v4, v15, v14, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->ReadContacts:Lcom/google/appinventor/components/common/Permission;

    .line 44
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "UseCredentials"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "USE_CREDENTIALS"

    invoke-direct {v2, v15, v14, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->UseCredentials:Lcom/google/appinventor/components/common/Permission;

    .line 47
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "BluetoothAdvertise"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "BLUETOOTH_ADVERTISE"

    invoke-direct {v4, v15, v14, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->BluetoothAdvertise:Lcom/google/appinventor/components/common/Permission;

    .line 48
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "BluetoothConnect"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const-string v4, "BLUETOOTH_CONNECT"

    invoke-direct {v2, v15, v14, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->BluetoothConnect:Lcom/google/appinventor/components/common/Permission;

    .line 49
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v15, "BluetoothScan"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const-string v2, "BLUETOOTH_SCAN"

    invoke-direct {v4, v15, v14, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->BluetoothScan:Lcom/google/appinventor/components/common/Permission;

    .line 51
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "ReadMediaImages"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const-string v4, "READ_MEDIA_IMAGES"

    invoke-direct {v2, v14, v15, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->ReadMediaImages:Lcom/google/appinventor/components/common/Permission;

    .line 52
    new-instance v4, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "ReadMediaVideo"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const-string v2, "READ_MEDIA_VIDEO"

    invoke-direct {v4, v14, v15, v2}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/google/appinventor/components/common/Permission;->ReadMediaVideo:Lcom/google/appinventor/components/common/Permission;

    .line 53
    new-instance v2, Lcom/google/appinventor/components/common/Permission;

    const-string v14, "ReadMediaAudio"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const-string v4, "READ_MEDIA_AUDIO"

    invoke-direct {v2, v14, v15, v4}, Lcom/google/appinventor/components/common/Permission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/google/appinventor/components/common/Permission;->ReadMediaAudio:Lcom/google/appinventor/components/common/Permission;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/google/appinventor/components/common/Permission;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    .line 14
    sput-object v4, Lcom/google/appinventor/components/common/Permission;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/Permission;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/common/Permission;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    .line 68
    invoke-static {}, Lcom/google/appinventor/components/common/Permission;->values()[Lcom/google/appinventor/components/common/Permission;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 69
    sget-object v4, Lcom/google/appinventor/components/common/Permission;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/google/appinventor/components/common/Permission;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-void
.end method

.method public static fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 74
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Permission;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 14
    const-class v0, Lcom/google/appinventor/components/common/Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/appinventor/components/common/Permission;

    return-object p0
.end method

.method public static values()[Lcom/google/appinventor/components/common/Permission;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/appinventor/components/common/Permission;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Lcom/google/appinventor/components/common/Permission;

    invoke-virtual {v0}, [Lcom/google/appinventor/components/common/Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/appinventor/components/common/Permission;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic toUnderlyingValue()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/google/appinventor/components/common/Permission;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUnderlyingValue()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/common/Permission;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/lang/String;

    return-object v0
.end method
