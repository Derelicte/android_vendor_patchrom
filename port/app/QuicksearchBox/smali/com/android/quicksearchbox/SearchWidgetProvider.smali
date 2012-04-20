.class public Lcom/android/quicksearchbox/SearchWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "SearchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 144
    return-void
.end method

.method private static createQsbActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "widgetAppData"

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, qsbIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x1420

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 114
    const-string v1, "app_data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    return-object v0
.end method

.method private static getSearchWidgetState(Landroid/content/Context;I)Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    .locals 6
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    .line 120
    new-instance v1, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;

    invoke-direct {v1, p1}, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;-><init>(I)V

    .line 122
    .local v1, state:Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v3, widgetAppData:Landroid/os/Bundle;
    const-string v4, "source"

    const-string v5, "launcher-widget"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v4, "android.search.action.GLOBAL_SEARCH"

    invoke-static {p0, v4, v3}, Lcom/android/quicksearchbox/SearchWidgetProvider;->createQsbActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 130
    .local v0, qsbIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->setQueryTextViewIntent(Landroid/content/Intent;)V

    .line 133
    invoke-static {p0, v3}, Lcom/android/quicksearchbox/SearchWidgetProvider;->getVoiceSearchIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, voiceSearchIntent:Landroid/content/Intent;
    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->setVoiceSearchIntent(Landroid/content/Intent;)V

    .line 136
    return-object v1
.end method

.method private static getSearchWidgetStates(Landroid/content/Context;)[Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    .locals 5
    .parameter "context"

    .prologue
    .line 76
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 77
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p0}, Lcom/android/quicksearchbox/SearchWidgetProvider;->myComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 78
    .local v0, appWidgetIds:[I
    array-length v4, v0

    new-array v3, v4, [Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;

    .line 79
    .local v3, states:[Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 80
    aget v4, v0, v2

    invoke-static {p0, v4}, Lcom/android/quicksearchbox/SearchWidgetProvider;->getSearchWidgetState(Landroid/content/Context;I)Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;

    move-result-object v4

    aput-object v4, v3, v2

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object v3
.end method

.method private static getVoiceSearchIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "widgetAppData"

    .prologue
    .line 140
    invoke-static {p0}, Lcom/android/quicksearchbox/QsbApplication;->get(Landroid/content/Context;)Lcom/android/quicksearchbox/QsbApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quicksearchbox/QsbApplication;->getVoiceSearch()Lcom/android/quicksearchbox/VoiceSearch;

    move-result-object v0

    .line 141
    .local v0, voiceSearch:Lcom/android/quicksearchbox/VoiceSearch;
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/VoiceSearch;->createVoiceWebSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method private static myComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 4
    .parameter "context"

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, pkg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".SearchWidgetProvider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, cls:Ljava/lang/String;
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static updateSearchWidgets(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 91
    invoke-static {p0}, Lcom/android/quicksearchbox/SearchWidgetProvider;->getSearchWidgetStates(Landroid/content/Context;)[Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;

    move-result-object v4

    .line 93
    .local v4, states:[Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    move-object v0, v4

    .local v0, arr$:[Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 94
    .local v3, state:Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v3, p0, v5}, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v3           #state:Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p1}, Lcom/android/quicksearchbox/SearchWidgetProvider;->updateSearchWidgets(Landroid/content/Context;)V

    goto :goto_0
.end method
