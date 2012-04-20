.class public Lcom/miui/notes/widget/NoteWidgetProvider_4x;
.super Lcom/miui/notes/widget/NoteWidgetProvider;
.source "NoteWidgetProvider_4x.java"


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
    .line 22
    invoke-static {p1}, Lcom/miui/notes/tool/ResourceParser$WidgetBgResources;->getWidget4xBgResource(I)I

    move-result v0

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 17
    const v0, 0x7f03000b

    return v0
.end method

.method protected getWidgetType()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

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
