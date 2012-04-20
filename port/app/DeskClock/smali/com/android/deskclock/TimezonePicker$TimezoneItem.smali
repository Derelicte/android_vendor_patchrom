.class public Lcom/android/deskclock/TimezonePicker$TimezoneItem;
.super Ljava/lang/Object;
.source "TimezonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/TimezonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimezoneItem"
.end annotation


# instance fields
.field public mCity:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;

.field public mGmt:Ljava/lang/String;

.field public mId:Ljava/lang/String;

.field public mOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "displayName"
    .parameter "gmt"
    .parameter "offset"
    .parameter "city"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mDisplayName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mGmt:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mOffset:I

    .line 35
    iput-object p5, p0, Lcom/android/deskclock/TimezonePicker$TimezoneItem;->mCity:Ljava/lang/String;

    .line 36
    return-void
.end method
