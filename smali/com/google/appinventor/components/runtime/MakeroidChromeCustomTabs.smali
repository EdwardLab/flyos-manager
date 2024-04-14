.class public final Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Chrome Custom Tabs component"
    iconName = "images/chrome.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "browser.aar, browser.jar"
.end annotation


# instance fields
.field private HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

.field private UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

.field private nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

.field private showTitle:Z

.field private tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

.field private x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

.field private xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->showTitle:Z

    const v1, -0xc0ae4b

    .line 45
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    const/4 v1, 0x0

    .line 46
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

    .line 49
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->context:Landroid/content/Context;

    .line 54
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    const-string p1, "Chrome Custom Tabs"

    const-string v0, "Custom Tabs Created"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final AddMenuItemOpenApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to add a menu item with the given title to open any app you want with the package name. The package name can be as example \'com.instagram.android\' to open Instagram on the menu item click. If the app is not installed the menu item will not be added."
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    :cond_0
    return-void
.end method

.method public final AddMenuItemOpenPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to add a menu item with the given title and page link. The page can be as example \'https://www.instagram.com/kodular/\'. If the user have Instagram installed,the page will then be opened in the official Instagram app. Else in the default browser."
    .end annotation

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 155
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addMenuItem(Ljava/lang/String;Landroid/app/PendingIntent;)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    return-void
.end method

.method public final DefaultShareMenuItem(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to add the default share menu item into the menu."
        userVisible = false
    .end annotation

    .line 106
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    return-void
.end method

.method public final DefaultShareMenuItem()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether the default share menu item is added or not."
    .end annotation

    .line 112
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    return v0
.end method

.method public final InstantAppsEnabled(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to enable instant apps."
        userVisible = true
    .end annotation

    .line 120
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

    return-void
.end method

.method public final InstantAppsEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether the instant apps support is enabled or not."
    .end annotation

    .line 126
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

    return v0
.end method

.method public final OpenCustomTab()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to open the custom tab."
    .end annotation

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->context:Landroid/content/Context;

    const v2, 0x10a0002

    const v3, 0x10a0003

    invoke-virtual {v0, v1, v2, v3}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setStartAnimations(Landroid/content/Context;II)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->showTitle:Z

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShowTitle(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 173
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setToolbarColor(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 175
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->enableUrlBarHiding()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->HSgmARz5w7nma58XTyePpkN53AMPZCg0W3RVNCiWbSBR7PJtyMriHlkRP1TBmIZy:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->addDefaultShareMenuItem()Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:Z

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setInstantAppsEnabled(Z)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 183
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    .line 185
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 189
    iget-object v2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsIntent;->launchUrl(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 195
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Chrome Custom Tabs"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final PreferNative(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Should open the native app handling the URL instead."
        userVisible = true
    .end annotation

    .line 147
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:Z

    return-void
.end method

.method public final ShowTitle(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to show the title."
        userVisible = true
    .end annotation

    .line 78
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->showTitle:Z

    return-void
.end method

.method public final ShowTitle()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether the title is shown or not."
    .end annotation

    .line 84
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->showTitle:Z

    return v0
.end method

.method public final ToolbarColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the toolbar color"
    .end annotation

    .line 139
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    return v0
.end method

.method public final ToolbarColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the color of the toolbar."
    .end annotation

    .line 133
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->nvMxrgxLbjkSMxKVTHnXYUSqg15Nn9sVGKlCuWXpKupRQzyTNqJO1nkpaVIaCsw:I

    return-void
.end method

.method public final Url()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the URL."
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Ljava/lang/String;

    return-object v0
.end method

.method public final Url(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The URL to load in the custom tab. The URL must start with \'http://\' or \'https://\'"
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Ljava/lang/String;

    return-void
.end method

.method public final UrlBarHidingOnScroll(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to hide the url bar on scrolling."
        userVisible = false
    .end annotation

    .line 92
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    return-void
.end method

.method public final UrlBarHidingOnScroll()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return whether the url bar is hide on scrolling or not."
    .end annotation

    .line 98
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidChromeCustomTabs;->tOvM9eIUWszKzvISo4zKh7g8MyRaLHuNLQ5NdigAhriBDKCBmghUBEUlM2ZIvV1J:Z

    return v0
.end method
