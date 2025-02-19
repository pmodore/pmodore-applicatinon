import "package:dartz/dartz.dart";
import "package:pomodore/core/resources/usecase.dart";
import "package:pomodore/features/task_management/domain/repositories/task_repository.dart";

class DeleteTaskUseCase extends UseCase<Either<String, String>, int> {
  final TaskRepository _taskRepository;

  DeleteTaskUseCase(this._taskRepository);

  @override
  Future<Either<String, String>> call({int? params}) {
    return _taskRepository.deleteTask(params!);
  }
}
