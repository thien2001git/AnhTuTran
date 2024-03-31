package DiamonShop.Service.Users;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInforPaginates(int totalData, int limit, int currentPage);
}
