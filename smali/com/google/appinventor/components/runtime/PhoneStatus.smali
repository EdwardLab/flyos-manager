.class public Lcom/google/appinventor/components/runtime/PhoneStatus;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component that returns information about the phone."
    iconName = "images/phoneip.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "webrtc.jar",
        "google-http-client-beta.jar",
        "google-http-client-android2-beta.jar",
        "google-http-client-android3-beta.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesNativeLibraries;
    v7aLibraries = "libjingle_peerconnection_so.so"
    v8aLibraries = "libjingle_peerconnection_so.so"
    x86_64Libraries = "libjingle_peerconnection_so.so"
.end annotation


# static fields
.field private static activity:Landroid/app/Activity; = null

.field private static bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z = true

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneStatus;


# instance fields
.field private Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

.field private final form:Lcom/google/appinventor/components/runtime/Form;

.field private yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    sput-object p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    .line 74
    sget-object p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneStatus;

    if-nez p1, :cond_0

    .line 75
    sput-object p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/PhoneStatus;

    :cond_0
    return-void
.end method

.method public static GetWifiIpAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the IP address of the phone in the form of a String"
    .end annotation

    .line 82
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 83
    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 84
    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    .line 86
    invoke-static {}, Lcom/google/appinventor/components/runtime/PhoneStatus;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/PhoneStatus;->intToIp(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Error: No Wifi Connection"

    :goto_0
    return-object v0
.end method

.method public static doFault()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Causes an Exception, used to debug exception processing."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "doFault called!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUseWebRTC()Z
    .locals 1

    .line 324
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/PhoneStatus;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 3

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    ushr-int/lit8 p0, p0, 0x18

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isConnected()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns TRUE if the phone is on Wifi, FALSE otherwise"
    .end annotation

    .line 95
    sget-object v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 101
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public GetInstaller()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the app that installed us"
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "io.makeroid.companion"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "sideloaded"

    :cond_0
    return-object v0
.end method

.method public GetVersionName()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the our VersionName property"
    .end annotation

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PhoneStatus"

    const-string v2, "Unable to get VersionName"

    .line 307
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public OnSettings()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnSettings"

    .line 251
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public SdkLevel()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the current Android SDK Level"
    .end annotation

    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public WebRTC(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 263
    sput-boolean p1, Lcom/google/appinventor/components/runtime/PhoneStatus;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    return-void
.end method

.method public WebRTC()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If True we are using WebRTC to talk to the server."
    .end annotation

    .line 268
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    return v0
.end method

.method public installURL(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the URL and installs it as an Android Package"
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    return-void
.end method

.method public isDirect()Z
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if we are running in the emulator or USB Connection"
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android.os.Build.VERSION.RELEASE = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStatus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "android.os.Build.PRODUCT = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "google_sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_1

    .line 192
    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->isDirect()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAssetsLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Declare that we have loaded our initial assets and other assets should come from the sdcard"
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v1, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setAssetsLoaded()V

    :cond_0
    return-void
.end method

.method public setHmacSeedReturnCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Establish the secret seed for HOTP generation. Return the SHA1 of the provided seed, this will be used to contact the rendezvous server. Note: This code also starts the connection negotiation process if we are using WebRTC. This is a bit of a kludge..."
    .end annotation

    const-string p2, "PhoneStatus"

    const-string v0, ""

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 134
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance p2, Lcom/google/appinventor/components/runtime/PhoneStatus$1;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/PhoneStatus$1;-><init>(Lcom/google/appinventor/components/runtime/PhoneStatus;)V

    const-string v0, "You cannot use two codes with one start up of the Companion. You should restart the Companion and try again."

    const-string v1, "Warning"

    const-string v2, "OK"

    invoke-static {p1, v0, v1, v2, p2}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

    return-object p1

    .line 150
    :cond_2
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    .line 160
    sget-boolean v1, Lcom/google/appinventor/components/runtime/PhoneStatus;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    if-nez v1, :cond_3

    .line 161
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    const-string v1, "SHA1"

    .line 166
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 172
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 173
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 174
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 175
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_4

    aget-byte v7, v0, v6

    new-array v8, v3, [Ljava/lang/Object;

    .line 176
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v8, v5

    const-string v7, "%02x"

    invoke-virtual {v2, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 178
    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Seed = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Code = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:Ljava/lang/String;

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Exception getting SHA1 Instance"

    .line 168
    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public shutdown()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Really Exit the Application"
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->finish()V

    const/4 v0, 0x0

    .line 242
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public startHTTPD(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the internal AppInvHTTPD to listen for incoming forms. FOR REPL USE ONLY!"
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    :cond_0
    return-void
.end method

.method public startWebRTC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the WebRTC engine"
    .end annotation

    .line 200
    sget-boolean v0, Lcom/google/appinventor/components/runtime/PhoneStatus;->bjRTr59rlfMAk3NoImwosXnapn2cygGkKCeZagS1kgI5blNKx2IlW2vUboyQWmzb:Z

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast p1, Lcom/google/appinventor/components/runtime/ReplForm;

    sget-object p2, Lcom/google/appinventor/components/runtime/PhoneStatus;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->yHAbLPerXNK4pCwn5nqbt3OeUjDvQdxh29RmVa0moB4dUtgatbeaGoP5jClPUWFb:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->initiate(Lcom/google/appinventor/components/runtime/ReplForm;Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/PhoneStatus;->form:Lcom/google/appinventor/components/runtime/Form;

    check-cast p1, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V

    return-void
.end method
