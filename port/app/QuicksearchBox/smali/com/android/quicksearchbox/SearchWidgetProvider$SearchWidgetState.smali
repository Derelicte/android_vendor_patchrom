.class Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;
.super Ljava/lang/Object;
.source "SearchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchWidgetState"
.end annotation


# instance fields
.field private final mAppWidgetId:I

.field private mCorpusIndicatorIntent:Landroid/content/Intent;

.field private mQueryTextViewIntent:Landroid/content/Intent;

.field private mVoiceSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "appWidgetId"

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p1, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mAppWidgetId:I

    .line 152
    return-void
.end method

.method private setOnClickActivityIntent(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "views"
    .parameter "viewId"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-static {p1, v1, p4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 186
    .local v0, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 187
    return-void
.end method


# virtual methods
.method public setQueryTextViewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "queryTextViewIntent"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mQueryTextViewIntent:Landroid/content/Intent;

    .line 156
    return-void
.end method

.method public setVoiceSearchIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "voiceSearchIntent"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 160
    return-void
.end method

.method public updateWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V
    .locals 4
    .parameter "context"
    .parameter "appWidgetMgr"

    .prologue
    const v3, 0x7f0f0027

    .line 164
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040006

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 166
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0f0024

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mCorpusIndicatorIntent:Landroid/content/Intent;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->setOnClickActivityIntent(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 169
    const v1, 0x7f0f0025

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mQueryTextViewIntent:Landroid/content/Intent;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->setOnClickActivityIntent(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 172
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, p1, v0, v3, v1}, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->setOnClickActivityIntent(Landroid/content/Context;Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 180
    :goto_0
    iget v1, p0, Lcom/android/quicksearchbox/SearchWidgetProvider$SearchWidgetState;->mAppWidgetId:I

    invoke-virtual {p2, v1, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 181
    return-void

    .line 177
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method
