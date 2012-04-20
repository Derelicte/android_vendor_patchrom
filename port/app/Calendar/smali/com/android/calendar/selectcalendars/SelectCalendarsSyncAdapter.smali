.class public Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectCalendarsSyncAdapter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    }
.end annotation


# static fields
.field private static COLOR_CHIP_SIZE:I


# instance fields
.field private mChanges:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation
.end field

.field private mColorColumn:I

.field private mContext:Landroid/content/Context;

.field private mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

.field private mIdColumn:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNameColumn:I

.field private final mNotSyncedString:Ljava/lang/String;

.field private mRowCount:I

.field private mSyncedColumn:I

.field private final mSyncedString:Ljava/lang/String;

.field private r:Landroid/graphics/drawable/shapes/RectShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x1e

    sput v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 70
    invoke-direct {p0, p2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 71
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 72
    sget v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    .line 73
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->r:Landroid/graphics/drawable/shapes/RectShape;

    sget v2, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->COLOR_CHIP_SIZE:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 76
    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method private initData(Landroid/database/Cursor;)V
    .locals 7
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 81
    if-nez p1, :cond_1

    .line 82
    iput v4, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 83
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 110
    :cond_0
    return-void

    .line 87
    :cond_1
    const-string v3, "_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    .line 88
    const-string v3, "calendar_displayName"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    .line 89
    const-string v3, "calendar_color"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    .line 90
    const-string v3, "sync_events"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    .line 92
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    .line 93
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    new-array v3, v3, [Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iput-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 94
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, p:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mIdColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 98
    .local v0, id:J
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    new-instance v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    invoke-direct {v5, p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;-><init>(Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;)V

    aput-object v5, v3, v2

    .line 99
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iput-wide v0, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    .line 100
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNameColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mColorColumn:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    .line 102
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v3, v2

    iget v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedColumn:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    .line 103
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v3, v2

    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    iget-boolean v3, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    iput-boolean v3, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 108
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 109
    goto :goto_0

    :cond_2
    move v3, v4

    .line 102
    goto :goto_1

    .line 106
    :cond_3
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v3, v3, v2

    iget-object v5, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->originalSynced:Z

    iput-boolean v5, v3, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    goto :goto_2
.end method

.method private static setText(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "id"
    .parameter "text"

    .prologue
    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 157
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->initData(Landroid/database/Cursor;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->notifyDataSetChanged()V

    .line 115
    return-void
.end method

.method public getChanges()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 167
    iget v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v1, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v1, p1

    .line 171
    .local v0, item:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 176
    iget v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v0, :cond_0

    .line 177
    const-wide/16 v0, 0x0

    .line 179
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x7f100032

    .line 119
    iget v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mRowCount:I

    if-lt p1, v6, :cond_0

    .line 120
    const/4 v5, 0x0

    .line 149
    :goto_0
    return-object v5

    .line 122
    :cond_0
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-object v3, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->displayName:Ljava/lang/String;

    .line 123
    .local v3, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget-boolean v4, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 124
    .local v4, selected:Z
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->color:I

    invoke-static {v6}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v1

    .line 126
    .local v1, color:I
    if-nez p2, :cond_1

    .line 127
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040011

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 132
    .local v5, view:Landroid/view/View;
    :goto_1
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mData:[Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 134
    const v6, 0x7f100033

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 135
    .local v0, cb:Landroid/widget/CheckBox;
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 137
    if-eqz v4, :cond_2

    .line 138
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 143
    :goto_2
    const v6, 0x7f100030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 145
    .local v2, colorView:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 147
    const v6, 0x7f100031

    iget-object v7, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/calendar/Utils;->transformDisplayNameIfNeed(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #colorView:Landroid/view/View;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    move-object v5, p2

    .restart local v5       #view:Landroid/view/View;
    goto :goto_1

    .line 140
    .restart local v0       #cb:Landroid/widget/CheckBox;
    :cond_2
    iget-object v6, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    invoke-static {v5, v9, v6}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    goto :goto_2
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;

    .line 194
    .local v1, row:Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    .line 197
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    if-eqz v3, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mSyncedString:Ljava/lang/String;

    .line 202
    .local v2, status:Ljava/lang/String;
    :goto_1
    const v3, 0x7f100032

    invoke-static {p2, v3, v2}, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->setText(Landroid/view/View;ILjava/lang/String;)V

    .line 204
    const v3, 0x7f100033

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 205
    .local v0, cb:Landroid/widget/CheckBox;
    iget-boolean v3, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->synced:Z

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    iget-object v3, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mChanges:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter$CalendarRow;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void

    .line 194
    .end local v0           #cb:Landroid/widget/CheckBox;
    .end local v2           #status:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/selectcalendars/SelectCalendarsSyncAdapter;->mNotSyncedString:Ljava/lang/String;

    .restart local v2       #status:Ljava/lang/String;
    goto :goto_1
.end method
