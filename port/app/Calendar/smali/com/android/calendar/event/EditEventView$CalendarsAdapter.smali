.class Lcom/android/calendar/event/EditEventView$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEventView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/EditEventView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarsAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 587
    const v0, 0x7f040013

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 588
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/EditEventView$CalendarsAdapter;->setDropDownViewResource(I)V

    .line 589
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 593
    const v8, 0x7f100030

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 594
    .local v2, colorBar:Landroid/view/View;
    const-string v8, "calendar_color"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 595
    .local v3, colorColumn:I
    const-string v8, "calendar_displayName"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 596
    .local v6, nameColumn:I
    const-string v8, "ownerAccount"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 597
    .local v7, ownerColumn:I
    if-eqz v2, :cond_0

    .line 598
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 602
    :cond_0
    const v8, 0x7f100034

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 603
    .local v5, name:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    .line 604
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 605
    .local v4, displayName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/android/calendar/Utils;->transformDisplayNameIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    const v8, 0x7f100035

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 608
    .local v0, accountName:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 609
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, accountNameString:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v1}, Lcom/android/calendar/Utils;->transformOwnerAccountIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 615
    .end local v0           #accountName:Landroid/widget/TextView;
    .end local v1           #accountNameString:Ljava/lang/String;
    .end local v4           #displayName:Ljava/lang/String;
    :cond_1
    return-void
.end method
