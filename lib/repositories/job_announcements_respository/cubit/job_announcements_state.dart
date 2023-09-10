part of 'job_announcements_cubit.dart';

@immutable
abstract class JobAnnouncementsState {}

class JobAnnouncementsLoading extends JobAnnouncementsState {}

class JobAnnouncementsFetchingData extends JobAnnouncementsState {}

class JobAnnouncementssListLoaded extends JobAnnouncementsState {
  final List<JobAnnouncementModel> jobAnnouncementsModelsList;

  JobAnnouncementssListLoaded(this.jobAnnouncementsModelsList);
}

class JobAnnouncementsItemLoaded extends JobAnnouncementsState {
  final JobAnnouncementModel jobAnnouncementsModel;

  JobAnnouncementsItemLoaded(this.jobAnnouncementsModel);
}

class JobAnnouncementsEmpty extends JobAnnouncementsState {}

class JobAnnouncementsAdding extends JobAnnouncementsState {}

class JobAnnouncementsAdded extends JobAnnouncementsState {}

class JobAnnouncementsEditing extends JobAnnouncementsState {}

class JobAnnouncementsEditted extends JobAnnouncementsState {}

class JobAnnouncementsDeleting extends JobAnnouncementsState {}

class JobAnnouncementsDeleted extends JobAnnouncementsState {}

class JobAnnouncementsSold extends JobAnnouncementsState {}

class JobAnnouncementsError extends JobAnnouncementsState {
  final String message;

  JobAnnouncementsError(this.message);
}
