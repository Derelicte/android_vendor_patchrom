.class public Lcom/miui/notes/widget/NoteWidgetProvider_2x;
.super Lcom/miui/notes/widget/NoteWidgetProvider;
.source "NoteWidgetProvider_2x.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/notes/widget/NoteWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBgResourceId(I)I
    .locals 1
    .parameter "bgId"

    .prologue
    .line 23
    invoke-static {p1}, Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;->getWidget2xBgResource(I)I

    move-result v0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 18
    const v0, 0x7f03000a

    return v0
.end method

.method protected getWidgetType()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/miui/notes/widget/NoteWidgetProvider;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 14
    return-void
.end method
